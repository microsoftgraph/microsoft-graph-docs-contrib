---
title: "Update groupPolicyMigrationReport"
description: "Update the properties of a groupPolicyMigrationReport object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update groupPolicyMigrationReport

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [groupPolicyMigrationReport](../resources/intune-gpanalyticsservice-grouppolicymigrationreport.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/groupPolicyMigrationReports/{groupPolicyMigrationReportId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [groupPolicyMigrationReport](../resources/intune-gpanalyticsservice-grouppolicymigrationreport.md) object.

The following table shows the properties that are required when you create the [groupPolicyMigrationReport](../resources/intune-gpanalyticsservice-grouppolicymigrationreport.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String||
|groupPolicyObjectId|Guid|The Group Policy Object GUID from GPO Xml content|
|displayName|String|The name of Group Policy Object from the GPO Xml Content|
|ouDistinguishedName|String|The distinguished name of the OU.|
|createdDateTime|DateTimeOffset|The date and time at which the GroupPolicyMigrationReport was created.|
|lastModifiedDateTime|DateTimeOffset|The date and time at which the GroupPolicyMigrationReport was last modified.|
|groupPolicyCreatedDateTime|DateTimeOffset|The date and time at which the GroupPolicyMigrationReport was created.|
|groupPolicyLastModifiedDateTime|DateTimeOffset|The date and time at which the GroupPolicyMigrationReport was last modified.|
|migrationReadiness|[groupPolicyMigrationReadiness](../resources/intune-gpanalyticsservice-grouppolicymigrationreadiness.md)|The Intune coverage for the associated Group Policy Object file. Possible values are: `none`, `partial`, `complete`, `error`, `notApplicable`.|
|targetedInActiveDirectory|Boolean|The Targeted in AD property from GPO Xml Content|
|totalSettingsCount|Int32|The total number of Group Policy Settings from GPO file.|
|supportedSettingsCount|Int32|The number of Group Policy Settings supported by Intune.|
|supportedSettingsPercent|Int32|The Percentage of Group Policy Settings supported by Intune.|
|roleScopeTagIds|String collection|The list of scope tags for the configuration.|



## Response
If successful, this method returns a `200 OK` response code and an updated [groupPolicyMigrationReport](../resources/intune-gpanalyticsservice-grouppolicymigrationreport.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/groupPolicyMigrationReports/{groupPolicyMigrationReportId}
Content-type: application/json
Content-length: 606

{
  "@odata.type": "#microsoft.graph.groupPolicyMigrationReport",
  "groupPolicyObjectId": "ca1c97af-97af-ca1c-af97-1ccaaf971cca",
  "displayName": "Display Name value",
  "ouDistinguishedName": "Ou Distinguished Name value",
  "groupPolicyCreatedDateTime": "2016-12-31T23:58:14.0676812-08:00",
  "groupPolicyLastModifiedDateTime": "2017-01-01T00:02:51.2241017-08:00",
  "migrationReadiness": "partial",
  "targetedInActiveDirectory": true,
  "totalSettingsCount": 2,
  "supportedSettingsCount": 6,
  "supportedSettingsPercent": 8,
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 778

{
  "@odata.type": "#microsoft.graph.groupPolicyMigrationReport",
  "id": "60663fa8-3fa8-6066-a83f-6660a83f6660",
  "groupPolicyObjectId": "ca1c97af-97af-ca1c-af97-1ccaaf971cca",
  "displayName": "Display Name value",
  "ouDistinguishedName": "Ou Distinguished Name value",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "groupPolicyCreatedDateTime": "2016-12-31T23:58:14.0676812-08:00",
  "groupPolicyLastModifiedDateTime": "2017-01-01T00:02:51.2241017-08:00",
  "migrationReadiness": "partial",
  "targetedInActiveDirectory": true,
  "totalSettingsCount": 2,
  "supportedSettingsCount": 6,
  "supportedSettingsPercent": 8,
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```