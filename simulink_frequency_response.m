parameters
model = 'controlled_motorcycle_plant';
io(1)=linio('controlled_motorcycle_plant/Constant',1,'input');
io(2)=linio('controlled_motorcycle_plant/Gain',1,'openoutput');
motorcycle_spec = operspec(model);
opOpts = findopOptions('DisplayReport','off');
op = findop(model,motorcycle_spec,opOpts);
input = frest.Sinestream('Frequency',logspace(1,2,100));

c_min = 1.6;
c_max = 1.6;

sysest_min = frestimate(model,op,io,input);

c_min = 4.4;
c_max = 4.4;

sysest_max = frestimate(model,op,io,input);

c_min = 1.6;
c_max = 4.4;

sysest_sh = frestimate(model,op,io,input);


P = bodeoptions;
P.FreqUnits = 'Hz';
P.PhaseVisible = 'off';
P.Xlim = [2, 20];
bodeplot(sysest_min, sysest_max, sysest_sh, P);

