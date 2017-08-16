# deviceManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The deviceManagement resource represents a tenant's collection device identities that have been pre-staged in Intune, and the enrollment profiles that may be assigned to device identities that support pre-enrollment configuration.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_devicemanagement_get.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_devicemanagement.md)|Read properties and relationships of the [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_devicemanagement.md) object.|
|[Update deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_devicemanagement_update.md)|[deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_devicemanagement.md)|Update the properties of a [deviceManagement](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_devicemanagement.md) object.|
|[List enrollmentProfiles](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_enrollmentprofile_list.md)|[enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md) collection|List properties and relationships of the [enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md) objects.|
|[Create enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_enrollmentprofile_create.md)|[enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md)|Create a new [enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md) object.|
|[List importedDeviceIdentities](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_importeddeviceidentity_list.md)|[importedDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_importeddeviceidentity.md) collection|List properties and relationships of the [importedDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_importeddeviceidentity.md) objects.|
|[Create importedDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_importeddeviceidentity_create.md)|[importedDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_importeddeviceidentity.md)|Create a new [importedDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_importeddeviceidentity.md) object.|
|[List importedAppleDeviceIdentities](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_importedappledeviceidentity_list.md)|[importedAppleDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_importedappledeviceidentity.md) collection|List properties and relationships of the [importedAppleDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_importedappledeviceidentity.md) objects.|
|[Create importedAppleDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_importedappledeviceidentity_create.md)|[importedAppleDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_importedappledeviceidentity.md)|Create a new [importedAppleDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_importedappledeviceidentity.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|The GUID for the object.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|enrollmentProfiles|[enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md) collection|The enrollment profiles.|
|importedDeviceIdentities|[importedDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_importeddeviceidentity.md) collection|The imported device identities.|
|importedAppleDeviceIdentities|[importedAppleDeviceIdentity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_importedappledeviceidentity.md) collection|The imported Apple device identities.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```



