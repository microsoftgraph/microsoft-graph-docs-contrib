---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetSharedUseLicenseUsageReportPostRequestBody()
request_body.reportname(CloudPcReportName.SharedUseLicenseUsageReport('cloudpcreportname.shareduselicenseusagereport'))

request_body.filter = 'ServicePlanId eq \'2d1d344e-d10c-41bb-953b-b3a47521dca0\' and DateTimeUTC gt datetime\'2022-11-30\''

request_body.Select(['ServicePlanId', 'LicenseCount', 'ClaimedLicenseCount', 'DateTimeUTC', ])

request_body.Skip = 0

request_body.Top = 100




await client.device_management.virtual_endpoint.reports.get_shared_use_license_usage_report.post(request_body = request_body)


```