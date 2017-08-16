# enrollmentProfile resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The enrollmentProfile resource represents a collection of configurations which must be provided pre-enrollment to enable enrolling certain devices whose identities have been pre-staged. Pre-staged device identities are assigned to this type of profile to apply the profile's configurations at enrollment of the corresponding device.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List enrollmentProfiles](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_enrollmentprofile_list.md)|[enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md) collection|List properties and relationships of the [enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md) objects.|
|[Get enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_enrollmentprofile_get.md)|[enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md)|Read properties and relationships of the [enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md) object.|
|[Create enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_enrollmentprofile_create.md)|[enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md)|Create a new [enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md) object.|
|[Delete enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_enrollmentprofile_delete.md)|None|Deletes a [enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md).|
|[Update enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_enrollmentprofile_update.md)|[enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md)|Update the properties of a [enrollmentProfile](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_corpenrollment_enrollmentprofile.md) object.|
|[exportMobileConfig function](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_enrollmentprofile_exportmobileconfig.md)|String|Not yet documented|
|[updateDeviceProfileAssignment action](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_corpenrollment_enrollmentprofile_updatedeviceprofileassignment.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|The GUID for the object|
|displayName|String|Name of the profile|
|description|String|Description of the profile|
|requiresUserAuthentication|Boolean|Indicates if the profile requires user authentication|
|configurationEndpointUrl|String|Configuration endpoint url to use for Enrollment|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.enrollmentProfile"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.enrollmentProfile",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "requiresUserAuthentication": true,
  "configurationEndpointUrl": "String"
}
```



