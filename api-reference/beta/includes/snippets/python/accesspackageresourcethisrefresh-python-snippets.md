---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.identity_governance.entitlement_management.access_package_catalogs.by_access_package_catalog_id('accessPackageCatalog-id').access_package_resources.by_access_package_resource_id('accessPackageResource-id').refresh.post()


```