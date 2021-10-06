let g:dbs = {
\ '[Mongodb] Ilotusland QA': 'mongodb://root:8637f002b96e7eee58d840b9291ad8ac@a83df2dbecfed460b9efaa990023a126-16991761.ap-southeast-1.elb.amazonaws.com:27017/ilotusland_Vietan',
\ '[Mongodb] Ilotusland Test': 'mongodb://root:8637f002b96e7eee58d840b9291ad8ac@52.77.219.185:27017/ilotusland_Vietan',
\ '[Mongodb] Solar QA': 'mongodb://root:8637f002b96e7eee58d840b9291ad8ac@a93ead260522d4c1db3aab3086f287bb-203733325.ap-southeast-1.elb.amazonaws.com/solar?authSource=admin',
\ '[Postgres] Dev': 'postgres://tsdbadmin:ybDQB7KYccPk891v@ilotusland-timescaledb-phanngocly164-2bd8.a.timescaledb.io:19575/defaultdb',
\ '[Postgres] Dev Local': 'postgres://quan:dev#123@localhost/dev',
\ }
let g:db_ui_use_nerd_fonts =1

nmap <Leader>n :DBUIToggle<CR>
