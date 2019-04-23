
import sys

if __name__ == '__main__':

    # mapptop = '/home/jr/unison/code/newSPICE++/MAPP-git/hagrid-MAPP/MAPP-2017-02-15-release-936fe19c63bf22cd50399c5cba1de4f0c2a339fa'
    mapptop = sys.argv[1];
    dir_name = sys.argv[2]

    sys.path.append('%s/vecvalder/vv4-python' % mapptop)
    from vv4.ModSpec_EE_Model import ModSpec_EE_Model

    models = ['MVS', 'cap', 'vsrc']
    DAG_files = ['%s/%s.dag' % (dir_name, model) for model in models]
    for model, DAG_file in zip(models, DAG_files):
        # print('Importing DAGs from %s ...' % DAG_file)
        MOD = ModSpec_EE_Model(DAG_file)
        base_name = '%s_vv4_test' % model
        # print('Exporting optimized ModSpec model to %s/%s.m ...' % (dir_name, base_name))
        MOD.export_optimized_MATLAB_code(dir_name, base_name, ite=True)


