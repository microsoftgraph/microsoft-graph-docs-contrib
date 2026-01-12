---
title: "cloudPcCloudApp resource type"
description: "Represents a cloud app."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/12/2025
---

# cloudPcCloudApp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud app. Cloud apps are built on frontline shared options and provide Windows 365 end users with an experience to access app-only sessions rather than a full desktop experience.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-cloudapps.md)|[cloudPcCloudApp](../resources/cloudpccloudapp.md) collection|List all the [cloudPcCloudApp](../resources/cloudpccloudapp.md) objects filtered by a provision policy ID.|
|[Get](../api/cloudpccloudapp-get.md)|[cloudPcCloudApp](../resources/cloudpccloudapp.md)|Read the properties of a specific [cloudPcCloudApp](../resources/cloudpccloudapp.md) object.|
|[Update](../api/cloudpccloudapp-update.md)|[cloudPcCloudApp](../resources/cloudpccloudapp.md)|Update the properties of a [cloudPcCloudApp](../resources/cloudpccloudapp.md) object, such as the display name or icon path.|
|[Publish](../api/cloudpccloudapp-publish.md)|None|Publish a [cloudPcCloudApp](../resources/cloudpccloudapp.md) object to make it available to end users through their portal, such as the Windows App.|
|[Unpublish](../api/cloudpccloudapp-unpublish.md)|None|Unpublish a [cloudPcCloudApp](../resources/cloudpccloudapp.md) to remove it from the end-user portal, for example, the Windows App.|
|[Reset](../api/cloudpccloudapp-reset.md)|None|Reset the app details of the [cloudPcCloudApp](../resources/cloudpccloudapp.md) object to the app details of the initially discovered app that this cloud app is mapped to.|
|[Retrieve discovered apps](../api/cloudpccloudapp-retrievediscoveredapps.md)|[cloudPcDiscoveredApp](../resources/cloudpcdiscoveredapp.md)|Get a list of [cloudPcDiscoveredApp](../resources/cloudpcdiscoveredapp.md) objects whose app details can be used to map to a [cloudPcCloudApp](../resources/cloudpccloudapp.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionFailedErrorCode|[cloudPcCloudAppActionFailedErrorCode](#cloudpccloudappactionfailederrorcode-values)|The error code if publishing, unpublishing, or resetting a cloud app fails. The possible values are: `cloudAppQuotaExceeded`, `cloudPcLicenseNotFound`, `internalServerError`, `appDiscoveryFailed`, `unknownFutureValue`. The default value is `null`. Supports `$filter`, `$select`, `$orderBy`. Read-only.|
|actionFailedErrorMessage|String|The error message when the IT admin failed to publish, unpublish, update, or reset a cloud app. For example: "Publish failed because it exceeds the 500 cloud apps limitation under the policy. You need to unpublish some cloud apps under this policy in order to publish this cloud app again." Read-only.|
|addedDateTime|DateTimeOffset|The date and time when the cloud app was added to this tenant and became visible in the admin portal. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Returned by default. An IT admin can't set or modify it. Supports `$filter`, `$select`, and `$orderBy`. Read-only.|
|appDetail|[cloudPcCloudAppDetail](../resources/cloudpccloudappdetail.md)|The details about the cloud app. These values come initially from the **appDetail** property of the associated discovered app. The **iconPath**, **iconIndex**, and **commandLineArguments** properties can be changed as needed when you update the cloud app. Supports `$select`.|
|appStatus|[cloudPcCloudAppStatus](#cloudpccloudappstatus-values)|The status of the cloud app. The possible values are: `preparing`, `ready`, `publishing`, `published`, `unpublishing`, `failed`, `unknownFutureValue`. The default value is `preparing`. For example, the state is `preparing` when the cloud app appears in the Intune portal, which indicates that the cloud app isn't yet ready to be published. The state then transitions to `ready`, which indicates that the cloud app is ready to be published. When an admin publishes or unpublishes a cloud app, the status transitions to `publishing` or `unpublishing`, respectively, before finally moving to `published` or `ready`. Supports `$filter`, `$select`, and `$orderBy`. Read-only.|
|availableToUser|Boolean|Indicates whether this cloud app is available to end users through the end-user portal or the Windows App. The default value is `false`. It changes to `true` if the cloud app is successfully published, and reverts to `false` when the admin unpublishes the cloud app. Supports `$filter`, `$select`, and `$orderBy`.|
|description|String|The description associated with the cloud app. The maximum allowed length for this property is 512 characters. Supports `$filter`, `$select`, and `$orderBy`.|
|discoveredAppName|String|Name of the discovered app associated with the cloud app. For example, `Paint`, Supports `$filter`, `$select`, and `$orderBy`. Read-only.|
|displayName|String|The display name for the cloud app. The display name for the cloud app, which appears on the end-user portal and must be unique within a single provisioning policy. It uses the discovered app name as the default value. The maximum allowed length for this property is 64 characters. For example, `Paint`. Supports `$filter`, `$select`, and `$orderBy`.|
|id|String|The unique ID of the cloud app. Autogenerated value during the creation of a new cloud app. Supports `$filter`, `$select`, and `$orderBy`. Read-only.|
|lastPublishedDateTime|DateTimeOffset|The latest date time when the admin published the cloud app. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Returned by default. An IT admin can't set or modify it. Supports `$filter`, `$select`, and `$orderBy`. Read-only.|
|provisioningPolicyId|String|The ID of the provisioning policy associated with this cloud app. For example, `96133506-c05b-4dbb-a150-ed4adc59895f`. Supports `$filter`, `$select`, and `$orderBy`. Read-only. Required.|
|scopeIds|String collection|The list of scope tag IDs for this cloud app. Inherited from the provisioning policy when the app is created or updated. Read-only.|

### cloudPcCloudAppStatus values

|Member|Description|
|:---|:---|
|preparing|Default. The initial state of a cloud app. Indicates that the cloud app isn't yet ready for publishing.| 
|ready|Indicates that the cloud app is ready for publishing.|        
|publishing|Indicates that the cloud app is in publishing or updating state.|
|published|Indicates that the application was published or updated successfully.|
|unpublishing|Indicates that the cloud app is in unpublishing state.|
|failed|Indicates that the application failed to complete the publishing, unpublishing, updating, or resetting process.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcCloudAppActionFailedErrorCode values

|Member|Description|
|:---|:---|
|cloudAppQuotaExceeded| Indicates that the provisioning policy reached the limit of 500 cloud apps. To proceed, unpublish an existing cloud app and try again. |
|cloudPcLicenseNotFound| Indicates that the tenant doesn't have any available frontline licenses.|
|internalServerError| Indicates that the cloud app can't be published or unpublished due to an internal server error.|
|appDiscoveryFailed| Indicates that the app discovery failed in the associated Cloud PC device.|
|unknownFutureValue| Evolvable enumeration sentinel value. Don't use.|

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
  "actionFailedErrorCode": "String",
  "actionFailedErrorMessage": "String",
  "addedDateTime": "String (timestamp)",
  "appDetail": {"@odata.type": "microsoft.graph.cloudPcCloudAppDetail"},
  "appStatus": "String",
  "availableToUser": "Boolean",
  "description": "String",
  "discoveredAppName": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastPublishedDateTime": "String (timestamp)",
  "provisioningPolicyId": "String",
  "scopeIds": ["String"]
}
```


