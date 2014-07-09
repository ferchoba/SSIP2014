function sample_filenames = loadSamplesInFolder(folder)

    sample_files = dir([folder '/*.jpg']);
    sample_filenames = [];

    for i = 1 : length(sample_files) 
        sample_files(i).name;
        sample_filenames = [sample_filenames; sample_files(i).name];
    end

    if (length(sample_files) == 0) 
        display('No image files in current folder. Is your Current folder correct?')
    end
end

