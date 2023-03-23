
Tables Names in Mapping documnet:

rskcsp_ds_css_deed_of_priority
rskcsp_ds_css_security_case
rskcsp_ds_css_collateral_ownership
rskcsp_ds_css_collateral_type
rskcsp_ds_css_collateral_valuation
rskcsp_ds_css_collateral_mgmt
rskcsp_ds_css_lien
rskcsp_ds_css_collateral_plgd
rskcsp_ds_css_collateral_aggregate

Table Names in Code:
 'rskcsp_ds_ccs_deed_of_priority'
,'rskcsp_ds_ccs_security_case'
,'rskcsp_ds_collateral_ownership'
,'rskcsp_ds_collateral_type'
,'rskcsp_ds_collateral_valuation'
,'rskcsp_ds_collateral_mgmt'
,'rskcsp_ds_lien'
,'rskcsp_ds_collateral_plgd'
,'rskcsp_ds_loan_collateral_aggregate'

with raw as(
select  "rskcsp_ds_collateral_type" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_downstream_raw.rskcsp_ds_collateral_type union ALL
select  "rskcsp_ds_lien" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_downstream_raw.rskcsp_ds_lien union ALL
select  "rskcsp_ds_collateral_mgmt" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_downstream_raw.rskcsp_ds_collateral_mgmt union ALL
select  "rskcsp_ds_ccs_security_case" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_downstream_raw.rskcsp_ds_ccs_security_case union ALL
select  "rskcsp_ds_collateral_ownership" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_downstream_raw.rskcsp_ds_collateral_ownership union ALL
select  "rskcsp_ds_ccs_deed_of_priority" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_downstream_raw.rskcsp_ds_ccs_deed_of_priority union ALL
select  "rskcsp_ds_collateral_valuation" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_downstream_raw.rskcsp_ds_collateral_valuation union ALL
select  "rskcsp_ds_loan_collateral_aggregate" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_downstream_raw.rskcsp_ds_loan_collateral_aggregate union ALL
select  "rskcsp_ds_collateral_plgd" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_downstream_raw.rskcsp_ds_collateral_plgd),
staging as (
select  "rskcsp_ds_ccs_security_case" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_staging.rskcsp_ds_ccs_security_case_staging union ALL
select  "rskcsp_ds_collateral_ownership" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_staging.rskcsp_ds_collateral_ownership_staging union ALL
select  "rskcsp_ds_lien" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_staging.rskcsp_ds_lien_staging union ALL
select  "rskcsp_ds_collateral_mgmt" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_staging.rskcsp_ds_collateral_mgmt_staging union ALL
select  "rskcsp_ds_collateral_plgd" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_staging.rskcsp_ds_collateral_plgd_staging union ALL
select  "rskcsp_ds_loan_collateral_aggregate" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_staging.rskcsp_ds_loan_collateral_aggregate_staging union ALL
select  "rskcsp_ds_ccs_deed_of_priority" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_staging.rskcsp_ds_ccs_deed_of_priority_staging union ALL
select  "rskcsp_ds_collateral_valuation" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_staging.rskcsp_ds_collateral_valuation_staging union ALL
select  "rskcsp_ds_collateral_type" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_staging.rskcsp_ds_collateral_type_staging),
curated as (
select  "rskcsp_ds_collateral_plgd" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_curation.rskcsp_ds_collateral_plgd_curated union ALL
select  "rskcsp_ds_collateral_valuation" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_curation.rskcsp_ds_collateral_valuation_curated union ALL
select  "rskcsp_ds_ccs_security_case" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_curation.rskcsp_ds_ccs_security_case_curated union ALL
select  "rskcsp_ds_collateral_type" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_curation.rskcsp_ds_collateral_type_curated union ALL
select  "rskcsp_ds_collateral_ownership" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_curation.rskcsp_ds_collateral_ownership_curated union ALL
select  "rskcsp_ds_loan_collateral_aggregate" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_curation.rskcsp_ds_loan_collateral_aggregate_curated union ALL
select  "rskcsp_ds_collateral_mgmt" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_curation.rskcsp_ds_collateral_mgmt_curated union ALL
select  "rskcsp_ds_ccs_deed_of_priority" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_curation.rskcsp_ds_ccs_deed_of_priority_curated union ALL
select  "rskcsp_ds_lien" as tablename,  count(1) as count from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_ds_curation.rskcsp_ds_lien_curated)

select a.tablename,a.count Raw,b.count Staging,c.count Curated from raw a , staging b, curated c
where a.tablename=b.tablename and a.tablename=c.tablename
;

-----insert statement

insert into dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_downstream_raw.rskcsp_ds_ccs_deed_of_priority

(
    ReplayId
,ChangeEventHeader
,Id

,Name
,CurrencyIsoCode
,CreatedDate
,CreatedById
,LastModifiedDate
,LastModifiedById
,SystemModstamp
,ConnectionReceivedId
,ConnectionSentId
,CCS_Security__c
,CCS_Deed_of_Priority_Number__c
,CCS_Lender__c
,_ObjectType
,_EventType

)

SELECT
    'ReplayId'
     ,ChangeEventHeader,Id,'del','GBP',CreatedDate,CreatedById,LastModifiedDate,LastModifiedById,SystemModstamp,'ConnectionReceivedId','ConnectionSentId','TEST',12,'CCS_Lender__c','_Obj','_Ee'
from dmn01-rsksoi-bld-01-2017.dmn01_rsksoi_euwe2_rsk_csp_downstream_raw.rskcsp_ds_account_covenant;
