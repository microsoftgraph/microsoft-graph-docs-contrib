---
title: "bookingPageSettings resource type"
description: "Settings for a published booking page"
author: "vikailas"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingPageSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings for a published booking page

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessControl|bookingPageAccessControl|Controlling access to a published booking page.The possible values are: `unrestricted`, `restrictedToOrganization`, `unknownFutureValue`.|
|bookingPageColorCode|String|Custom color for bookings page. Value should be in Hex format. Example: `#123456`|
|businessTimeZone|String|The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](dateTimeTimeZone.md).|
|customerConsentMessage|String|he personal data collection and usage consent message in the bookings page|
|enforceOneTimePassword|Boolean|Determines if One Time Password is needed for appointment creation. Set to `false` by default|
|isBusinessLogoDisplayEnabled|Boolean|Display the business logo in the bookings page. Defaults value is `false`|
|isCustomerConsentEnabled|Boolean|If `true` enable the personal data collection and usage consent toggle in the bookings page. `false` by default |
|isSearchEngineIndexabilityDisabled|Boolean|Ensures that the page is not indexed by web crawlers. Defaults value is `false`|
|isTimeSlotTimeZoneSetToBusinessTimeZone|Boolean|Shows the booking time slots in business TimeZone Defaults to false|
|privacyPolicyWebUrl|String|URL of a webpage that gives the terms and conditions of the business. If privacy policy is not included, the following text 'The Policies and Practices of <Booking Business's Name> apply to the use of your data' will be displayed on Bookings page as default. |
|termsAndConditionsWebUrl|String|URL of a webpage that gives the terms and conditions of the business.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bookingPageSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingPageSettings",
  "privacyPolicyWebUrl": "String",
  "termsAndConditionsWebUrl": "String",
  "enforceOneTimePassword": "Boolean",
  "accessControl": "String",
  "isCustomerConsentEnabled": "Boolean",
  "customerConsentMessage": "String",
  "isBusinessLogoDisplayEnabled": "Boolean",
  "isSearchEngineIndexabilityDisabled": "Boolean",
  "bookingPageColorCode": "String",
  "businessTimeZone": "String",
  "isTimeSlotTimeZoneSetToBusinessTimeZone": "Boolean"
}
```

