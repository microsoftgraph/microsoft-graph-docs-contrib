---
title: "Update onPremisesDirectorySynchronization"
description: "Update the properties of an onPremisesDirectorySynchronization object."
author: "dkershaw10"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Update onPremisesDirectorySynchronization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)  |
| :------------------------------------- | :------------------------------------------- |
| Delegated (work or school account)     | OnPremDirectorySynchronization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                               |
| Application                            | Not supported.                               |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/onPremisesSynchronization
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property      | Type                                                                                                                                           | Description                                                                                                                                |
| :------------ | :--------------------------------------------------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------- |
| configuration | [Microsoft.DirectoryServices.onPremisesDirectorySynchronizationConfiguration](../resources/onpremisesdirectorysynchronizationconfiguration.md) | Consists of configurations that can be fine tuned and impact the on-premises directory synchronization process for a tenant. Not required. |
| features      | [Microsoft.DirectoryServices.onPremisesDirectorySynchronizationFeature](../resources/onpremisesdirectorysynchronizationfeature.md)             | Consists of directory synchronization features that can be enabled or disabled. Not required.                                              |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_onpremisesdirectorysynchronization"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/directory/onPremisesSynchronization
Content-Type: application/json
Content-length: 293

{
  "@odata.type": "#microsoft.graph.onPremisesDirectorySynchronization",
  "configuration": {
    "@odata.type": "microsoft.graph.onPremisesDirectorySynchronizationConfiguration"
  },
  "features": {
    "@odata.type": "microsoft.graph.onPremisesDirectorySynchronizationFeature"
  }
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
