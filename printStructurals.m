function printStructurals(niftifs, filename,  bottom, top)
if nargin<3
    bottom = 0.15;
    top = 0.85;
end

subjects = niftifs.subject_array.get_subjects;
for i = 1:size(subjects)
    subject = subjects{i};
    struct = subject.get_structural_path;
    if isempty(struct)
       warning([subject.id, 'has not run']);
       continue;        
    end
    print_sMRI(struct, filename, subject.id, bottom, top);    
end



end