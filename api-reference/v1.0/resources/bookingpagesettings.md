---
title: "bookingPageSettings resource type"
description: "Represents the settings of a published booking page."
author: "PurvaEkatpure"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/30/2024
---

# bookingPageSettings resource type

Namespace: microsoft.graph

Represents the settings of a published booking page.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessControl|bookingPageAccessControl|Access control on a published booking page. The possible values are: `unrestricted`, `restrictedToOrganization`, `unknownFutureValue`.|
|bookingPageColorCode|String|Custom color for the booking page. The value should be in Hex format. For example, `#123456`.|
|businessTimeZone|String|The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](dateTimeTimeZone.md).|
|customerConsentMessage|String|The personal data collection and usage consent message in the booking page.|
|enforceOneTimePassword|Boolean|Determines whether the one-time password is required to create an appointment. The default value is `false`.|
|isBusinessLogoDisplayEnabled|Boolean|Indicates whether the business logo is displayed on the booking page. The default value is `false`.|
|isCustomerConsentEnabled|Boolean|Enables personal data collection and the usage consent toggle on the booking page. The default value is `false`.|
|isSearchEngineIndexabilityDisabled|Boolean|Indicates whether web crawlers index this page. The defaults value is `false`.|
|isTimeSlotTimeZoneSetToBusinessTimeZone|Boolean|Indicates whether the time zone of the time slot is set to the time zone of the business. The default value is `false`.|
|privacyPolicyWebUrl|String|URL of a webpage that provides the terms and conditions of the business. If a privacy policy isn't included, the following text appears on the booking page as default: "The policies and practices of {booking_business_name} apply to the use of your data." |
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
  "accessControl": "String",
  "bookingPageColorCode": "String",
  "businessTimeZone": "String",
  "customerConsentMessage": "String",
  "enforceOneTimePassword": "Boolean",
  "isBusinessLogoDisplayEnabled": "Boolean",
  "isCustomerConsentEnabled": "Boolean",
  "isSearchEngineIndexabilityDisabled": "Boolean",
  "isTimeSlotTimeZoneSetToBusinessTimeZone": "Boolean",
  "privacyPolicyWebUrl": "String",
  "termsAndConditionsWebUrl": "String"
}
```
