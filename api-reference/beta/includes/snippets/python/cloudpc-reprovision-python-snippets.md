---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReprovisionPostRequestBody()
request_body.useraccounttype(CloudPcUserAccountType.Administrator('cloudpcuseraccounttype.administrator'))

request_body.osversion(CloudPcOperatingSystem.Windows10('cloudpcoperatingsystem.windows10'))




await client.device_management.virtual_endpoint.cloud_p_cs.by_cloud_p_c_id('cloudPC-id').reprovision.post(request_body = request_body)


```