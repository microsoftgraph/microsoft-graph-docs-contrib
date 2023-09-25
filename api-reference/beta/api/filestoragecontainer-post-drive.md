NOT NEEDED
---
title: "Create drive" 
description: "Create a new drive object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create drive
Namespace: microsoft.graph



Create a new drive object.

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
POST /fileStorageContainers/{fileStorageContainersId}/drive
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [drive](../resources/drive.md) object.

You can specify the following properties when creating a **drive**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[oneDrive.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [oneDrive.baseItem](../resources/baseitem.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [oneDrive.baseItem](../resources/baseitem.md). Required.|
|description|String|**TODO: Add Description** Inherited from [oneDrive.baseItem](../resources/baseitem.md). Optional.|
|eTag|String|**TODO: Add Description** Inherited from [oneDrive.baseItem](../resources/baseitem.md). Optional.|
|lastModifiedBy|[oneDrive.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [oneDrive.baseItem](../resources/baseitem.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [oneDrive.baseItem](../resources/baseitem.md). Required.|
|name|String|**TODO: Add Description** Inherited from [oneDrive.baseItem](../resources/baseitem.md). Optional.|
|parentReference|[oneDrive.itemReference](../resources/itemreference.md)|**TODO: Add Description** Inherited from [oneDrive.baseItem](../resources/baseitem.md). Optional.|
|webUrl|String|**TODO: Add Description** Inherited from [oneDrive.baseItem](../resources/baseitem.md). Optional.|
|driveType|String|**TODO: Add Description** Optional.|
|owner|[oneDrive.identitySet](../resources/identityset.md)|**TODO: Add Description** Optional.|
|quota|[oneDrive.quota](../resources/quota.md)|**TODO: Add Description** Optional.|
|sharePointIds|[oneDrive.sharepointIds](../resources/sharepointids.md)|**TODO: Add Description** Optional.|
|system|[oneDrive.systemFacet](../resources/systemfacet.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [drive](../resources/drive.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_drive_from_drives"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/fileStorageContainers/{fileStorageContainersId}/drive
Content-Type: application/json

{
  "@odata.type": "#oneDrive.drive",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "description": "String",
  "eTag": "String",
  "name": "String",
  "parentReference": {
    "@odata.type": "microsoft.graph.itemReference"
  },
  "webUrl": "String",
  "driveType": "String",
  "owner": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "quota": {
    "@odata.type": "microsoft.graph.quota"
  },
  "sharePointIds": {
    "@odata.type": "microsoft.graph.sharepointIds"
  },
  "system": {
    "@odata.type": "microsoft.graph.systemFacet"
  }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "oneDrive.drive"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#oneDrive.drive",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "eTag": "String",
  "id": "f0c72560-0053-eb89-9703-ba3fd7fbb7a8",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "parentReference": {
    "@odata.type": "microsoft.graph.itemReference"
  },
  "webUrl": "String",
  "driveType": "String",
  "owner": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "quota": {
    "@odata.type": "microsoft.graph.quota"
  },
  "sharePointIds": {
    "@odata.type": "microsoft.graph.sharepointIds"
  },
  "system": {
    "@odata.type": "microsoft.graph.systemFacet"
  }
}
```

