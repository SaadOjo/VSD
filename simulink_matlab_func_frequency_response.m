parameters
model = 'controlled_plant';
io(1)=linio('controlled_plant/Constant',1,'input');
io(2)=linio('controlled_plant/Gain',1,'openoutput');
motorcycle_spec = operspec(model);
opOpts = findopOptions('DisplayReport','off');
op = findop(model,motorcycle_spec,opOpts);
input = frest.Sinestream('Frequency',logspace(1,2,100));
c = c_min;
calculate_matrices
sysest_min = frestimate(model,op,io,input);

c = c_max;
calculate_matrices
sysest_max = frestimate(model,op,io,input);

P = bodeoptions;
P.FreqUnits = 'Hz';
P.PhaseVisible = 'off';
P.Xlim = [2, 20];
bodeplot(sysest_min, sysest_max,'-', P);

