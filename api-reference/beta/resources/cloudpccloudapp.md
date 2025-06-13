---
title: "cloudPcCloudApp resource type"
description: "Represents a Cloud App. Cloud Apps are built on Frontline shared options and provide the Windows 365 end-user an experience to access app-only sessions rather than a full desktop experience. The following table describes the Cloud App configurations."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/12/2025
---

# cloudPcCloudApp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Cloud App. Cloud Apps are built on Frontline shared options and provide the Windows 365 end-user an experience to access app-only sessions rather than a full desktop experience. The following table describes the Cloud App configurations.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-cloudpccloudapps.md)|[cloudPcCloudApp](../resources/cloudpccloudapp.md) collection|List the properties and relationships of [cloudPcCloudApp](../resources/cloudpccloudapp.md) objects.|
|[Get](../api/cloudPcCloudApp-get.md)|[cloudPcCloudApp](../resources/cloudpccloudapp.md)|Read the properties and relationships of a [cloudPcCloudApp](../resources/cloudpccloudapp.md) object.|
|[Update](../api/cloudPcCloudApp-update.md)|[cloudPcCloudApp](../resources/cloudpccloudapp.md)|Update the properties of a [cloudPcCloudApp](../resources/cloudpccloudapp.md) object.|
|[Publish](../api/cloudPcCloudApp-publish.md)|None|Publish a [cloudPcCloudApp](../resources/cloudpccloudapp.md) to make it available to end-users through their portal, such as the Windows App. Note that there is a limit of 500 Cloud Apps that an admin can publish under a single provisioning policy.|
|[Unpublish](../api/cloudPcCloudApp-unpublish.md)|None|Unpublish a [cloudPcCloudApp](../resources/cloudpccloudapp.md) to remove it from the end-user portal, for example, the Windows App. Unpublishing a Cloud App will revert any changes made to its appDetails and reset them to the values of the discovered app that the Cloud App is linked to.|
|[Reset](../api/cloudPcCloudApp-reset.md)|None|Reset the appDetails of the [cloudPcCloudApp](../resources/cloudpccloudapp.md) to the appDetails of the initial discovered app that this Cloud App is mapped to. The Reset action requires the "Microsoft.CloudPC/CloudApps/Update" permission.|
|[RetrieveDiscoveredApps](../api/cloudPcCloudApp-retrievediscoveredapps.md)|[cloudPcDiscoveredApp](../resources/cloudpcdiscoveredapp.md)|Get discovered app list. Admin need to have "Microsoft.CloudPC/DeviceImages/Read" permission and mapped scope tags when the discovered apps are coming from the image which is choosen in provisioning policy.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Specifies the display name for a Cloud App.  This is the name of the app that appears on the end-user portal, and it MUST be unique within a single provisioning policy. It uses the discovered app name as default value. Maximum allowed length for this property is 64. For example, "Paint". Supports: $filter, $select, $orderBy.|
|discoveredAppName|String|Name of the discovered app assiciated with the cloud app. For example: `Paint`, Supports: $filter, $select, $orderBy. Read-only.|
|description|String|Specifies the description associated with the Cloud App.  The maximum allowed length for this property is 512. Supports: $filter, $select, $orderBy.|
|provisioningPolicyId|String|Specifies the ID of the provisioning policy associated with this Cloud App. This is a required property. For example: "96133506-c05b-4dbb-a150-ed4adc59895f". Supports: $filter, $select, $orderBy.  Read-only.|
|provisioningPolicyId|String|Name of the discovered app assiciated with the cloud app. For example: `Paint`, Supports: $filter, $select, $orderBy. Read-only.|
|id|String|Specifies the unique ID of the Cloud App. This is created automatically during the creation of a new Cloud App. Supports: $filter, $select, $orderBy.  Read-Only. |
|lastPublishedDateTime|DateTimeOffset|The latest date time when the admin published the cloud app.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`. Returned by default,this property value cannot be set or modified by IT Admin. Supports: $filter, $select, $orderBy. Read-only.|
|scopeIds|String collection|Specifies the list of Scope Tag IDs for this Cloud App. This is inherited from the provisioning policy when the app is created or updated. Read-only.|
|actionFailedErrorMessage|String|Specifies the error message when the IT admin failed to publish/unpublish/update/reset a Cloud App. For example: Publish failed because it exceeds the 500 Cloud Apps limitation under the policy,` you need to unpublish some Cloud Apps under this policy in order to publish this Cloud App again. Read-Only. |
|appStatus|[cloudPcCloudAppStatus](#cloudpccloudappstatus-values)|Specifies the status of the Cloud App.  Possible values are `preparing`, `publishing`, `published`, `unpublishing`, `ready`, `failed`.  Default value is `preparing`. For example, the state is `preparing` when the Cloud App can be seen on the Intune portal, indicating that the Cloud App is not yet ready for publishing. The state then transitions to `ready`, indicating that the Cloud App is ready to be published. When an admin publishes or unpublishes a Cloud App, the status transitions to `publishing` or `unpublishing`, respectively, before finally moving to `published` or `ready`. Supports: $filter, $select, $orderBy.  Read-Only.|
|appDetail|[cloudPcCloudAppDetail](#cloudpccloudappdetail-values)|Specifies details about the Cloud App.  These values come initially from the appDetail property of the associated discovered app.  The iconPath, iconIndex, and commandLineArguments properties can be changed as needed when updating the Cloud App. Supports: $select.|
|addedDateTime|DateTimeOffset|The time the cloud app was added to this tenant and can be seen from the admin portal. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`. Returned by default, this property value cannot be set or modified by the IT Admin. Supports: $filter, $select, $orderBy. Read-only. |
|availableToUser|Boolean|Indicates whether this cloud app is available to end-users through the end-user portal or the Windows App. The default value is `false`. It will change to `true` if the cloud app is successfully published, and revert to `false` when the admin unpublishes the cloud app.  Supports: $filter, $select, $orderBy.|
|actionFailedErrorCode|[cloudPcCloudAppActionFailedErrorCode](#cloudpccloudappactionfailederrorcode-values)|Specifies the error code if publishing, unpublishing, or resetting a Cloud App fails. Possible values are `cloudAppQuotaExceeded`, `cloudPcLicenseNotFound`, or `internalServerError`. Default value is null. Supports: $filter, $select, $orderBy.  Read-Only.|

### cloudPcCloudAppStatus values

|Member|Description|
|:---|:---|
|preparing|Default. This is the initial state of a Cloud App. Indicates that the Cloud App is yet not ready for publishing.|    
|ready| Indicates the cloud app is ready for publishing.|        
|publishing|Indicates the cloud app is in publishing/updating state.|
|published|Indicates the application has been published/updated successfully.|
|unpublishing|Indicates the cloud app is in unpublishing state.|
|failed|Indicates the application has failed to complete publishing or unpublishing or updating or reseting process.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|


### cloudPcCloudAppDetail values

|Member|Type|Description|
|:---|:---|:---|
|filePath|String| Specifies the path to the executable file for the application within the OS of the hosting Cloud PC. The value should be an absolute path to a Windows or universal app, for example: "C:\app.exe" or "shell:AppsFolder\appname!App".  Read-only. |
|iconPath|String| Specifies a path to the icon file for the application within the OS of the hosting Cloud PC.  When admin update the path of one cloud app, the value should be a rooted absolute path, for example: "C:\Windows\system32\WindowsPowerShell\v1.0\powershell_ise.exe". When the property value is not defined, this property will be set with default icon.  |
|iconIndex|Int32| Specifies the index of the icon within the file specified by the iconPath property. For example, if the iconPath is set to "C:\\Program Files\\MyApp\\myapp.ico", and the iconIndex is set to 0, the system will use the first icon in the myapp.ico file.  The default value is 0.  |
|commandLineArguments|String| Specifies the command-line arguments for the Cloud App. These parameters are passed to the Cloud App when it is launched. The maximum allowed length for this property is 2048. For example, "-fullscreen -loop".  |

### cloudPcCloudAppActionFailedErrorCode values

|Member|Description|
|:---|:---|
|cloudAppQuotaExceeded| Indicates that the provisioning policy has reached the limit of 500 Cloud Apps. To proceed, unpublish an existing Cloud App and try again. |
|cloudPcLicenseNotFound| Indicates that the tenant does not have an available frontline license.|
|internalServerError| Indicates that the Cloud App could not be published or unpublished due to an internal server error.|
|appDiscoveryFailed| Indicates that the app discovery has failed in the associated Cloud PC device.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcCloudApp",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcCloudApp",
  "displayName": "String",
  "description": "String",
  "discoveredAppName": "String",
  "provisioningPolicyId": "String",
  "id": "String (identifier)",
  "lastPublishedDateTime": "String (timestamp)",
  "appDetail": {
    "@odata.type": "microsoft.graph.cloudPcCloudAppDetail"
  },
  "scopeIds": "String",
  "actionFailedErrorCode": "String",
  "appStatus": "String",
  "actionFailedErrorMessage": "String",
  "addedDateTime": "String (timestamp)",
  "availableToUser": "Boolean",
}
```
