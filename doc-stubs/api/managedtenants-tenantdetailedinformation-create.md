---
title: "Create tenantDetailedInformation"
description: "Create a new tenantDetailedInformation object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Create tenantDetailedInformation
Namespace: microsoft.graph.managedTenants



Create a new [tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /tenantRelationships/managedTenants/tenantsDetailedInformation
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md) object.

The following table shows the properties that are required when you create the [tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/managedtenants-entity.md)|
|tenantId|String|The Azure Active Directory tenant identifier for the managed tenant.|
|displayName|String|**TODO: Add Description**|
|defaultDomainName|String|**TODO: Add Description**|
|countryName|String|**TODO: Add Description**|
|countryCode|String|**TODO: Add Description**|
|city|String|**TODO: Add Description**|
|region|String|**TODO: Add Description**|
|verticalName|String|**TODO: Add Description**|
|industryName|String|**TODO: Add Description**|
|segmentName|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_tenantdetailedinformation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/tenantRelationships/managedTenants/tenantsDetailedInformation
Content-Type: application/json
Content-length: 355

{
  "@odata.type": "#microsoft.graph.managedTenants.tenantDetailedInformation",
  "tenantId": "String",
  "displayName": "String",
  "defaultDomainName": "String",
  "countryName": "String",
  "countryCode": "String",
  "city": "String",
  "region": "String",
  "verticalName": "String",
  "industryName": "String",
  "segmentName": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.tenantDetailedInformation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.managedTenants.tenantDetailedInformation",
  "id": "d12e4bf5-4bf5-d12e-f54b-2ed1f54b2ed1",
  "tenantId": "String",
  "displayName": "String",
  "defaultDomainName": "String",
  "countryName": "String",
  "countryCode": "String",
  "city": "String",
  "region": "String",
  "verticalName": "String",
  "industryName": "String",
  "segmentName": "String"
}
```

