class grafana::params {
    $version            = '1.7.1'
    $install_method     = 'archive'
    $install_dir        = '/opt'
    $symlink            = false
    $grafana_user       = 'root'
    $grafana_group      = 'root'
    $datasources        = {}
}