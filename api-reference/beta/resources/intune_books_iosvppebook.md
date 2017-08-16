# iosVppEBook resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A class containing the properties for iOS Vpp eBook.

Inherits from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosVppEBooks](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_iosvppebook_list.md)|[iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_iosvppebook.md) collection|List properties and relationships of the [iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_iosvppebook.md) objects.|
|[Get iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_iosvppebook_get.md)|[iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_iosvppebook.md)|Read properties and relationships of the [iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_iosvppebook.md) object.|
|[Create iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_iosvppebook_create.md)|[iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_iosvppebook.md)|Create a new [iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_iosvppebook.md) object.|
|[Delete iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_iosvppebook_delete.md)|None|Deletes a [iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_iosvppebook.md).|
|[Update iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_iosvppebook_update.md)|[iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_iosvppebook.md)|Update the properties of a [iosVppEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_iosvppebook.md) object.|
|[List eBookGroupAssignments](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookgroupassignment_list.md)|[eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md) collection|List properties and relationships of the [eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md) objects.|
|[Get eBookInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_ebookinstallsummary_get.md)|[eBookInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookinstallsummary.md)|Read properties and relationships of the [eBookInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookinstallsummary.md) object.|
|[List deviceInstallStates](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_deviceinstallstate_list.md)|[deviceInstallState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_deviceinstallstate.md) collection|List properties and relationships of the [deviceInstallState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_deviceinstallstate.md) objects.|
|[List userInstallStateSummaries](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/api/intune_books_userinstallstatesummary_list.md)|[userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md) collection|List properties and relationships of the [userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md) objects.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|displayName|String|Name of the eBook. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|description|String|Description. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|publisher|String|Publisher. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|publishedDateTime|DateTimeOffset|The date and time when the eBook was published. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|largeCover|[mimeContent](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_mimecontent.md)|Book cover. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|createdDateTime|DateTimeOffset|The date and time when the eBook file was created. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time when teh eBook was last modified. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|informationUrl|String|The more information Url. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|vppTokenId|Guid|The Vpp token ID.|
|appleId|String|The Apple ID associated with Vpp token.|
|vppOrganizationName|String|The Vpp token's organization name.|
|genres|String collection|Genres.|
|language|String|Language.|
|seller|String|Seller.|
|totalLicenseCount|Int32|Total license count.|
|usedLicenseCount|Int32|Used license count.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[eBookGroupAssignment](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookgroupassignment.md) collection|The list of group assignments for this eBook. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|installSummary|[eBookInstallSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_ebookinstallsummary.md)|Mobile App Install Summary. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|deviceStates|[deviceInstallState](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_deviceinstallstate.md) collection|The list of installation states for this eBook. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|
|userStateSummary|[userInstallStateSummary](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_userinstallstatesummary.md) collection|The list of installation states for this eBook. Inherited from [managedEBook](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/resources/intune_books_managedebook.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosVppEBook"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosVppEBook",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "publisher": "String",
  "publishedDateTime": "String (timestamp)",
  "largeCover": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "informationUrl": "String",
  "privacyInformationUrl": "String",
  "vppTokenId": "<Unknown Primitive Type Edm.Guid>",
  "appleId": "String",
  "vppOrganizationName": "String",
  "genres": [
    "String"
  ],
  "language": "String",
  "seller": "String",
  "totalLicenseCount": 1024,
  "usedLicenseCount": 1024
}
```



