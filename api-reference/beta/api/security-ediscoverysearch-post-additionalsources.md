---
title: "Create dataSource"
description: "Create a new dataSource object."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# Create dataSource
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new dataSource object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/additionalSources
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [dataSource](../resources/security-datasource.md) object.

You can specify the following properties when creating a **dataSource**.

>**Note:** Either **email** or **site** are required, not both. 

|Property|Type|Description|
|:---|:---|:---|
|email|string|SMTP address of the mailbox. To get the email address of a group, use [List groups](../api/group-list.md) or [Get group](../api/group-get.md). You can query by the name of the group using `$filter`; for example, `https://graph.microsoft.com/v1.0/groups?$filter=displayName eq 'secret group'&$select=mail,id,displayName`.|
|site|string|URL of the site; for example, `https://contoso.sharepoint.com/sites/HumanResources`. |


## Response

If successful, this method returns a `201 Created` response code and a [dataSource](../resources/security-datasource.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_datasource_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/additionalSources

{
    "@odata.type": "microsoft.graph.security.siteSource",
    "site": {
        "webUrl": "https://contoso.sharepoint.com/sites/SecretSite"
    }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.dataSource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.dataSource",
  "id": "df891f68-66b9-36e8-37a8-891bed5ba2ee",
  "displayName": "String",
  "holdStatus": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

