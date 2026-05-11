---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.identity_governance.catalogs.by_access_package_catalog_id('accessPackageCatalog-id').access_package_resources.by_access_package_resource_id('accessPackageResource-id').upload_sessions.by_custom_data_provided_resource_upload_session_id('customDataProvidedResourceUploadSession-id').get()


```