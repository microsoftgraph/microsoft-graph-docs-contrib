---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Compliance Search Action in Security and Compliance.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Action | Key | String | The Action parameter specifies what type of action to define. Accepted values are Export, Retention and Purge. | `Export`, `Preview`, `Purge`, `Retention` |
| SearchName | Key | String | The SearchName parameter specifies the name of the existing content search to associate with the content search action. You can specify multiple content searches separated by commas. | - |
| FileTypeExclusionsForUnindexedItems | Write | StringArray[] | The FileTypeExclusionsForUnindexedItems specifies the file types to exclude because they can't be indexed. You can specify multiple values separated by commas. | - |
| EnableDedupe | Write | Boolean | The EnableDedupe parameter eliminates duplication of messages when you export content search results. | - |
| IncludeCredential | Write | Boolean | The IncludeCredential switch specifies whether to include the credential in the results. | - |
| IncludeSharePointDocumentVersions | Write | Boolean | The IncludeSharePointDocumentVersions parameter specifies whether to export previous versions of the document when you use the Export switch. | - |
| PurgeType | Write | String | The PurgeType parameter specifies how to remove items when the action is Purge. | `SoftDelete`, `HardDelete` |
| RetryOnError | Write | Boolean | The RetryOnError switch specifies whether to retry the action on any items that failed without re-running the entire action all over again. | - |
| ActionScope | Write | String | The ActionScope parameter specifies the items to include when the action is Export. | `IndexedItemsOnly`, `UnindexedItemsOnly`, `BothIndexedAndUnindexedItems` |
| Ensure | Write | String | Specify if this action should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Compliance Administrator |
| Update    | Compliance Administrator |


### Office 365 Exchange Online

To authenticate with the Security and Compliance APIs, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



