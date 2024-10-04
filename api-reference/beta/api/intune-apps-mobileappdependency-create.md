---
title: "Create mobileAppDependency"
description: "Create a new mobileAppDependency object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
---

# Create mobileAppDependency

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [mobileAppDependency](../resources/intune-apps-mobileappdependency.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceAppManagement/mobileAppRelationships
POST /deviceAppManagement/mobileApps/{mobileAppId}/relationships
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the mobileAppDependency object.

The following table shows the properties that are required when you create the mobileAppDependency.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the mobile app relationship entity. Read-Only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetId|String|App ID of the app that is the target of the mobile app relationship entity. Read-Only Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetDisplayName|String|The display name of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetDisplayVersion|String|The display version of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetPublisher|String|The publisher of the app that is the target of the mobile app relationship entity. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md)|
|targetType|[mobileAppRelationshipType](../resources/intune-apps-mobileapprelationshiptype.md)|The type of relationship indicating whether the target application of a relationship is a parent or child in the relationship. Possible values are: parent, child. Read-Only. This property is read-only. Inherited from [mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md). Possible values are: `child`, `parent`, `unknownFutureValue`.|
|dependencyType|[mobileAppDependencyType](../resources/intune-apps-mobileappdependencytype.md)|The type of dependency relationship between the parent and child apps. Possible values are: detect, autoInstall. Read-Only. Possible values are: `detect`, `autoInstall`, `unknownFutureValue`.|
|dependentAppCount|Int32|The total number of apps that directly or indirectly depend on the parent app. Read-Only. This property is read-only.|
|dependsOnAppCount|Int32|The total number of apps the child app directly or indirectly depends on. Read-Only. This property is read-only.|



## Response
If successful, this method returns a `201 Created` response code and a [mobileAppDependency](../resources/intune-apps-mobileappdependency.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceAppManagement/mobileAppRelationships
Content-type: application/json
Content-length: 372

{
  "@odata.type": "#microsoft.graph.mobileAppDependency",
  "targetId": "Target Id value",
  "targetDisplayName": "Target Display Name value",
  "targetDisplayVersion": "Target Display Version value",
  "targetPublisher": "Target Publisher value",
  "targetType": "parent",
  "dependencyType": "autoInstall",
  "dependentAppCount": 1,
  "dependsOnAppCount": 1
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 421

{
  "@odata.type": "#microsoft.graph.mobileAppDependency",
  "id": "c7f6f9ab-f9ab-c7f6-abf9-f6c7abf9f6c7",
  "targetId": "Target Id value",
  "targetDisplayName": "Target Display Name value",
  "targetDisplayVersion": "Target Display Version value",
  "targetPublisher": "Target Publisher value",
  "targetType": "parent",
  "dependencyType": "autoInstall",
  "dependentAppCount": 1,
  "dependsOnAppCount": 1
}
```
