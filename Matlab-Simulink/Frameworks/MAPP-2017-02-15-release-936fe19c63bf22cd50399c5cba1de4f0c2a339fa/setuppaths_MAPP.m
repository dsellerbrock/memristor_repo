%basedir='/home/jr/unison/code/newSPICE++/MAPP-git/hagrid-MAPP/MAPP-2017-02-15-release-936fe19c63bf22cd50399c5cba1de4f0c2a339fa'; % no longer needed here; start_MAPP sets this up
addpath(sprintf('%s/vecvalder', basedir));
addpath(sprintf('%s/utils', basedir));
addpath(sprintf('%s/vecvalder/tests', basedir));
addpath(sprintf('%s/ModSpec-MATLAB', basedir));
addpath(sprintf('%s/DAEAPI-MATLAB', basedir));
addpath(sprintf('%s/A1oDAEAPI-MATLAB', basedir));
addpath(sprintf('%s/vecvalder/vv4-tests', basedir));
addpath(sprintf('%s/vecvalder/vv4-MATLAB', basedir));
if ~strcmp('', '')
    addpath(sprintf('%s/', basedir));
    addpath(sprintf('%s//backend'                , basedir));
    addpath(sprintf('%s//frontend'               , basedir));
    addpath(sprintf('%s//frontend/VALint_rules'  , basedir));
    addpath(sprintf('%s//backend/utils'          , basedir));
    addpath(sprintf('%s//backend/print_templates', basedir));
    addpath(sprintf('%s//doc'                    , basedir));
end
if ~strcmp('', '')
    addpath(sprintf('%s/', basedir));
end
if ~strcmp('', '')
    addpath(sprintf('%s/', basedir));
end
if ~strcmp('', '')
    addpath(sprintf('%s/', basedir));
end
if ~strcmp('', '')
    addpath(sprintf('%s/', basedir));
end
addpath(genpath(sprintf('%s/Documentation', basedir)));
