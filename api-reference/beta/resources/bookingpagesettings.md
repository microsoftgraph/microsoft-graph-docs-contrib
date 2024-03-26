---
title: "bookingPageSettings resource type"
description: "Represents the settings of a published booking page."
author: "vikailas"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
---

# bookingPageSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings for a published booking page.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessControl|bookingPageAccessControl|Controlling access to a published booking page. The possible values are: `unrestricted`, `restrictedToOrganization`, and, `unknownFutureValue`.|
|bookingPageColorCode|String|Custom color for the bookings page. The value should be in Hex format. Example: `#123456`.|
|businessTimeZone|String|The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](dateTimeTimeZone.md).|
|customerConsentMessage|String|The personal data collection and usage consent message in the bookings page.|
|enforceOneTimePassword|Boolean|Determines if the one-time password is required to create an appointment. The default value is `false`.|
|isBusinessLogoDisplayEnabled|Boolean|Indicates if the business logo is displayed on the bookings page. The default value is `false`.|
|isCustomerConsentEnabled|Boolean|Enables personal data collection and the usage consent toggle on the bookings page. The default value is `false`.|
|isSearchEngineIndexabilityDisabled|Boolean|Ensures that the web crawlers don't index this page. The defaults value is `false`.|
|isTimeSlotTimeZoneSetToBusinessTimeZone|Boolean|Displays the booking time slots in the business time zone. The default value is `false`.|
|privacyPolicyWebUrl|String|RL of a webpage that provides the terms and conditions of the business. If a privacy policy isn't included, the following text appears on the bookings page as default: 'The policies and practices of <booking business's name> apply to the use of your data. |
|termsAndConditionsWebUrl|String|URL of a webpage that provides the terms and conditions of the business.|

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

