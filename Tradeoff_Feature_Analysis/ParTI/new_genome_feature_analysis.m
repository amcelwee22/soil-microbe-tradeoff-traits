
% Loading in general feature data
featureValues = readmatrix('my_scripts\new_genome_feature_analysis\values_only_LOG_NEWGenomeNewFeaturevalues.csv');

% Loading feature names
featureNames = importdata('my_scripts\new_genome_feature_analysis\feature_names.list');

% Loading continous feature data
contAttrNames = featureNames;
contAttr = str2double(featureValues);

[arc, arcOrig, pc] = ParTI_lite(featureValues, 1, 10, [], [],[], featureNames, ...
    contAttr, [], 0.05,'2023-12-14_GenomicFeature_1');
