---
title: "Create ediscoveryNoncustodialDataSource"
description: "Create a new ediscoveryNoncustodialDataSource object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create ediscoveryNoncustodialDataSource
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new ediscoveryNoncustodialDataSource object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/noncustodialDataSources
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.

You can specify the following properties when creating an **ediscoveryNoncustodialDataSource**.

|Property|Type|Description|
|:---|:---|:---|
|status|dataSourceContainerStatus|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md). The possible values are: `active`, `released`, `unknownFutureValue`. Optional.|
|holdStatus|dataSourceHoldStatus|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md). The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`, `unknownFutureValue`. Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md). Optional.|
|releasedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md). Optional.|
|displayName|String|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md). Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_ediscoverynoncustodialdatasource_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/noncustodialDataSources
Content-Type: application/json
Content-length: 206

{
  "@odata.type": "#microsoft.graph.security.ediscoveryNoncustodialDataSource",
  "status": "String",
  "holdStatus": "String",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryNoncustodialDataSource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.ediscoveryNoncustodialDataSource",
  "id": "df3ab25e-912d-2d31-b22e-1600ab7244e5",
  "status": "String",
  "holdStatus": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

