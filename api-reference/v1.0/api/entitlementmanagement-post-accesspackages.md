---
title: "Create accessPackage"
description: "Create a new accessPackage."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# Create accessPackage

Namespace: microsoft.graph

Create a new [accessPackage](../resources/accesspackage.md) object.

The access package will be added to an existing [accessPackageCatalog](../resources/accesspackagecatalog.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/accessPackages
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer \{token\}. Required. |
| Content-type  | application/json. Required.  |

## Request body
In the request body, supply a JSON representation of the [accessPackage](../resources/accesspackage.md) object.

You can specify the following properties when creating an **accessPackage**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the access package.|
|description|String|The description of the access package.|
|isHidden|Boolean|Whether the access package is hidden from the requestor.|



## Response

If successful, this method returns a 201 Created response code and a new [accessPackage](../resources/accesspackage.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_accesspackage"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages
Content-Type: application/json
Content-length: 164

{
  "displayName": "sales reps",
  "description": "outside sales representatives",
  "isHidden": false,
  "catalog": {
    "id": "66584aae-98bb-48cc-9458-7bee5d2a6577"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackage"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "642181f0-bc17-4fc6-9ebb-ff53dbf18c2f",
  "displayName": "sales reps",
  "description": "outside sales representatives",
  "isHidden": false,
  "createdDateTime": "2021-11-10T01:10:09.5220119Z",
  "modifiedDateTime": "2021-11-10T01:10:09.5220119Z"
}
```

