---
title: "Update mobilityAppManagementPolicies"
description: "Update the properties of a mobilityManagementPolicy object."
author: "ravennMSFT"
localization_priority: Normal
ms.prod: "mobility-management"
doc_type: apiPageType
---

## Update mobilityManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.all, Policy.ReadWrite.all|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /policies/mobilityAppManagementPolicies/{appId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.

The following table shows the properties that are required when you update the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this policy. Equal to the appId for the associated application (Inherited)|
|appliesTo|policyScope|Determines the groups this policy setting applies to. Possible values are: `none`, `all`, `selected`, `unknownFutureValue`.|
|complianceUrl|String|Compliance URL of the mobility management application|
|description|String|Description for this policy (Inherited)|
|discoveryUrl|String|Discovery URL of the mobility management application|
|displayName|String|Display name for this policy (Inherited)|
|termsOfUseUrl|String|Terms of Use URL of the mobility management application|

## Response

If successful, this method returns a `200 OK` response code and an updated [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_mobilitymanagementpolicy"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/policies/mobilityAppManagementPolicies/{appId}
Content-Type: application/json
Content-length: 237

{
  "@odata.type": "#microsoft.graph.mobilityManagementPolicy",
  "appliesTo": "String",
  "complianceUrl": "String",
  "description": "String",
  "discoveryUrl": "String",
  "displayName": "String",
  "termsOfUseUrl": "String"
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mobilityManagementPolicy",
  "id": "b2c4bc08-bc08-b2c4-08bc-c4b208bcc4b2",
  "appliesTo": "String",
  "complianceUrl": "String",
  "description": "String",
  "discoveryUrl": "String",
  "displayName": "String",
  "termsOfUseUrl": "String"
}
```
