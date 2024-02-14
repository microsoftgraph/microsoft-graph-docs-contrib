---
title: "device resource type"
description: "Represents a device registered in the directory."
ms.localizationpriority: medium
author: "sandeo-MSFT"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# device resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a device registered in the directory. Devices are created in the cloud using the Device Registration Service or by Intune. They're used by conditional access policies for multifactor authentication. These devices can range from desktop and laptop machines to phones and tablets. Inherits from [directoryObject](directoryobject.md).

This resource is an open type that allows other properties to be passed in. You can also add your own data to custom properties as [extensions](/graph/extensibility-overview).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get device](../api/device-get.md) | [device](device.md) |Read properties and relationships of device object.|
|[List devices](../api/device-list.md) | [device](device.md) collection| Retrieve a list of devices registered in the directory. |
|[Update device](../api/device-update.md) | [device](device.md)  |Update the properties of the device object. |
|[Delete device](../api/device-delete.md) | None |Delete the device object. |
|[delta](../api/device-delta.md)|[device](device.md) collection| Get incremental changes for devices. |
|[List memberOf](../api/device-list-memberof.md) |[directoryObject](directoryobject.md) collection| List the groups and administrative units that the device is a direct member of. |
|[List transitive memberOf](../api/device-list-transitivememberof.md) |[directoryObject](directoryobject.md) collection| List the groups and administrative units that the device is a member of. This operation is transitive. |
|[List registeredOwners](../api/device-list-registeredowners.md) |[directoryObject](directoryobject.md) collection| Get the users that are registered owners of the device from the registeredOwners navigation property.|
|[List registeredUsers](../api/device-list-registeredusers.md) |[directoryObject](directoryobject.md) collection| Get the registered users of the device from the registeredUsers navigation property.|
|[List usageRights](../api/device-list-usagerights.md) | [usageRight](usageright.md) collection | Get a collection of usage rights granted to the device.|
| [checkMemberGroups](../api/directoryobject-checkmembergroups.md) | String collection | Check for membership in a list of groups. The check is transitive. |
| [getMemberGroups](../api/directoryobject-getmembergroups.md) | String collection | Return all the groups that the device is a member of. The check is transitive. |
|[checkMemberObjects](../api/directoryobject-checkmemberobjects.md) | String collection | Check for membership in a list of groups, directory role, or administrative unit objects. |
|[getMemberObjects](../api/directoryobject-checkmemberobjects.md) | String collection | Return all groups, administrative units, and directory roles that the device is a member of. The check is transitive. |
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](/graph/extensibility-schema-groups) || Create a schema extension definition and then use it to add custom typed data to a resource.|

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#device-properties).

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accountEnabled|Boolean| `true` if the account is enabled; otherwise, `false`. Default is `true`. <br/><br/> Supports `$filter` (`eq`, `ne`, `not`, `in`). Only callers in Global Administrator and Cloud Device Administrator roles can set this property.|
|alternativeSecurityIds|[alternativeSecurityId](alternativeSecurityId.md) collection| For internal use only. Not nullable. Supports `$filter` (`eq`, `not`, `ge`, `le`). |
|approximateLastSignInDateTime|DateTimeOffset| The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, and `eq` on `null` values) and `$orderby`. |
|complianceExpirationDateTime|DateTimeOffset| The timestamp when the device is no longer deemed compliant. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
|deviceCategory|String|User-defined property set by Intune to automatically add devices to groups and simplify managing devices.|
|deviceId|String| Unique Identifier set by Azure Device Registration Service at the time of registration. This is an alternate key that can be used to reference the device object. Also Supports `$filter` (`eq`, `ne`, `not`, `startsWith`). |
|deviceMetadata|String| For internal use only. Set to `null`. |
|deviceOwnership|String|Ownership of the device. This property is set by Intune. Possible values are: `unknown`, `company`, `personal`.|
|deviceVersion|Int32| For internal use only. |
|displayName|String| The display name for the device. Required. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values), `$search`, and `$orderby`.  |
|domainName|String|The on-premises domain name of Microsoft Entra hybrid joined devices. This property is set by Intune.|
|enrollmentProfileName|String|Enrollment profile applied to the device. For example, `Apple Device Enrollment Profile`, `Device enrollment - Corporate device identifiers`, or `Windows Autopilot profile name`. This property is set by Intune.|
|enrollmentType|String|Enrollment type of the device. This property is set by Intune. Possible values are: `unknown`, `userEnrollment`, `deviceEnrollmentManager`, `appleBulkWithUser`, `appleBulkWithoutUser`, `windowsAzureADJoin`, `windowsBulkUserless`, `windowsAutoEnrollment`, `windowsBulkAzureDomainJoin`, `windowsCoManagement`.|
| extensionAttributes | [onPremisesExtensionAttributes](onpremisesextensionattributes.md) | Contains extension attributes 1-15 for the device. The individual extension attributes aren't selectable. These properties are mastered in cloud and can be set during creation or update of a device object in Microsoft Entra ID. <br><br>Supports `$filter` (`eq`, `not`, `startsWith`, and `eq` on `null` values).|
|hostnames|String collection| List of host names for the device.|
|id|String|The unique identifier for the device. Inherited from [directoryObject](directoryobject.md). Key, Not nullable. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`). |
|isCompliant|Boolean|`true` if the device complies with Mobile Device Management (MDM) policies; otherwise, `false`. Read-only. This can only be updated by Intune for any device OS type or by an [approved MDM app](/windows/client-management/mdm/azure-active-directory-integration-with-mdm) for Windows OS devices. Supports `$filter` (`eq`, `ne`, `not`).|
|isManaged|Boolean|`true` if the device is managed by a Mobile Device Management (MDM) app; otherwise, `false`. This can only be updated by Intune for any device OS type or by an [approved MDM app](/windows/client-management/mdm/azure-active-directory-integration-with-mdm) for Windows OS devices. Supports `$filter` (`eq`, `ne`, `not`). |
|isManagementRestricted|Boolean|Indicates whether the device is a member of a restricted management administrative unit, in which case it requires a role scoped to the restricted administrative unit to manage. The default value is `false`. Read-only. <br/><br/> To manage a device that's a member of a restricted administrative unit, the calling app must be assigned the `Directory.Write.Restricted` permission. For delegated scenarios, the administrators must also be explicitly assigned supported roles at the restricted administrative unit scope.|
|isRooted|Boolean|`true` if device is rooted; `false` if device is jail-broken. This can only be updated by Intune.|
|kind| String| Form factor of the device. Only returned if the user signs in with a Microsoft account as part of Project Rome. |
|managementType|String|Management channel of the device.  This property is set by Intune. Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configurationManagerClient`, `configurationManagerClientMdm`, `configurationManagerClientMdmEas`, `unknown`, `jamf`, `googleCloudDevicePolicyController`.|
|manufacturer| String| Manufacturer of the device. Read-only. |
|mdmAppId|String|Application identifier used to register device into MDM. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `startsWith`).|
|model| String| Model of the device. Read-only. |
|name| String | Friendly name of the device. Only returned if user signs in with a Microsoft account as part of Project Rome. |
|onPremisesLastSyncDateTime|DateTimeOffset|The last time at which the object was synced with the on-premises directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z` Read-only. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`). |
|onPremisesSecurityIdentifier|String|The on-premises security identifier (SID) for the user who was synchronized from on-premises to the cloud. Read-only. Returned only on `$select`. Supports `$filter` (`eq`).|
|onPremisesSyncEnabled|Boolean|`true` if this object is synced from an on-premises directory; `false` if this object was originally synced from an on-premises directory but is no longer synced; `null` if this object has never been synced from an on-premises directory (default). Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`, and `eq` on `null` values). |
|operatingSystem|String| The type of operating system on the device. Required. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`, and `eq` on `null` values). |
|operatingSystemVersion|String| Operating system version of the device. Required. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`, and `eq` on `null` values). |
|physicalIds|String collection| For internal use only. Not nullable. Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`, `/$count eq 0`, `/$count ne 0`. |
|platform |String|Platform of device. Only returned if the user signs in with a Microsoft account as part of Project Rome. |
|profileType|String|The profile type of the device. Possible values: `RegisteredDevice` (default), `SecureVM`, `Printer`, `Shared`, `IoT`.|
|registrationDateTime|DateTimeOffset|Date and time of when the device was registered. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|status | String| Device is `online` or `offline`. Only returned if user signs in with a Microsoft account as part of Project Rome. |
|systemLabels|String collection| List of labels applied to the device by the system. Supports `$filter` (`/$count eq 0`, `/$count ne 0`). |
|trustType|String| Type of trust for the joined device. Read-only. Possible values: `Workplace` (indicates *bring your own personal devices*), `AzureAd` (Cloud only joined devices), `ServerAd` (on-premises domain joined devices joined to Microsoft Entra ID). For more information, see [Introduction to device management in Microsoft Entra ID](/azure/active-directory/device-management-introduction). |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|commands | [command](command.md) collection | Set of commands sent to this device.|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the device. Read-only. Nullable. |
|memberOf|[directoryObject](directoryobject.md) collection|Groups and administrative units that this device is a member of. Read-only. Nullable. Supports `$expand`. |
|registeredOwners|[directoryObject](directoryobject.md) collection| The user that cloud joined the device or registered their personal device. The registered owner is set at the time of registration. Read-only. Nullable. Supports `$expand`. |
|registeredUsers|[directoryObject](directoryobject.md) collection| Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable. Supports `$expand`. |
|transitiveMemberOf |[directoryObject](directoryobject.md) collection| Groups and administrative units that this device is a member of. This operation is transitive. Supports `$expand`.  |
|usageRights|[usageRight](usageright.md) collection|Represents the usage rights a device has been granted. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "extensions",
    "registeredOwners",
    "registeredUsers"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.device"
}-->

```json
{
  "accountEnabled": "Boolean",
  "approximateLastSignInDateTime": "String (timestamp)",
  "complianceExpirationDateTime": "String (timestamp)",
  "deviceCategory": "String",
  "deviceId": "String",
  "deviceMetadata": "String",
  "deviceOwnership": "String",
  "deviceVersion": "Int32",
  "displayName": "String",
  "domainName": "String",
  "enrollmentProfileName": "String",
  "enrollmentType": "String",
  "extensionAttributes": {"@odata.type": "microsoft.graph.onPremisesExtensionAttributes"},
  "hostnames" : ["String"],
  "id": "String (identifier)",
  "isCompliant": "Boolean",
  "isManaged": "Boolean",
  "isRooted": "Boolean",
  "kind": "String",
  "managementType": "String",
  "manufacturer": "String",
  "mdmAppId": "String",
  "model": "String",
  "name": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSecurityIdentifier": "Boolean",
  "onPremisesSyncEnabled": "Boolean",
  "operatingSystem": "String",
  "operatingSystemVersion": "String",
  "physicalIds": ["String"],
  "platform": "String",
  "profileType": "String",
  "registrationDateTime": "String (timestamp)",
  "status": "String",
  "systemLabels": ["String"],
  "trustType": "String"
}
```

## Related content

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "device resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
