create database fmcg_salesdata;
use fmcg_salesdata;
show tables;
RENAME TABLE dataset TO data_info;
describe data_info;
alter table data_info rename column `ï»¿Store Maneger` to storemanager;
alter table data_info rename column `Net Amt` to net_amt;
select * from data_info;

select count(*) from data_info;

-- KPI  'ToTal Sales'
select sum(net_amt) as sales from data_info;

-- KPI  'Brand Name'
select `brand name` from data_info;

-- KPI  ' store wise sales'
select  `store name`,count(net_amt) from data_info group by `store name` order by count(net_amt) desc limit 10;

-- KPI  ' manager wise sale'
select  `storemanager`,count(net_amt) from data_info group by `storemanager` order by count(net_amt) desc limit 5;

-- KPI  'State wise sale'
select  `state`,count(net_amt) from data_info group by `state` order by count(net_amt) desc limit 10;

-- KPI 'meal type'
select  `meal type`,count(net_amt) from data_info group by `meal type` order by count(net_amt);

-- KPI  'Sales type'
select  `sales type`,count(net_amt) from data_info group by `sales type` order by count(net_amt);