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

Update the properties of an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)  |
| :------------------------------------- | :------------------------------------------- |
| Delegated (work or school account)     | OnPremDirectorySynchronization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                               |
| Application                            | Not supported.                               |

For delegated scenarios, the user needs to be assigned the *Global administrator* [role](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/onPremisesSynchronization/{id}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property      | Type                                                                                                               | Description                                                                                                                  |
| :------------ | :----------------------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------- |
| configuration | [onPremisesDirectorySynchronizationConfiguration](../resources/onpremisesdirectorysynchronizationconfiguration.md) | Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant. |
| features      | [onPremisesDirectorySynchronizationFeature](../resources/onpremisesdirectorysynchronizationfeature.md)             | Consists of directory synchronization features that can be enabled or disabled.                                              |

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
PATCH https://graph.microsoft.com/beta/directory/onPremisesSynchronization/{id}
Content-Type: application/json
Content-length: 293

{
  "configuration": {
    "accidentalDeletionPrevention": {
      "synchronizationPreventionType": "enabledForCount",
      "alertThreshold": 500
    }
  },
  "features": {
    "groupWriteBackEnabled": true
  }
}
```

### Response

The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
