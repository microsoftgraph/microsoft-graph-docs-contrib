# legalAgeGroupClassification, ageGroup and consentProvidedForMinor 

These three properties are used by Azure AD Tenant Administrators & Application Developers to help ensure the user of an account is handled correctly based on the regulatory rules governing the user's country.

The ageGroup and consentProvidedForMinor are set by the administrative owner of the account. The property can not be read outside of the tenant because each tenant is generally consider a seperate regulatory boundary.

The legalAgeGroupClassification is used by application developers to restrict features and capabilities as required. This property is only available to applications in the Home Tenant of the user and Microsoft. 

## legalAgeGroupClassification

This property is used by applications to ensure the correct handling of a user based on their Legal Age Group. It is Read-Only and calculated based on the ageGroup and consentProvidedForMinor proprties.

| Value	   | #	|Description|
|:---------------|:--------|:----------|
|undefined|0|Default value, no ageGroup has been set for the user.|
|MinorWithoutParentalConsent |1|(Reserved for future use) The user is consider a minor based on the regulations of their location but consent has not been obtained. User's in this state will be unable to Sign In.|
|MinorWithParentalConsent|2|The user is consider on the regulations of their location and consent has been obtained for them to use the account.|
|notAdult|3|The user is from a country that has regulations (US, KR, UK, EU) and user’s age is more than the upper limit of kid age (as per country) and less than lower limit of Adult age (as per country). So basically, teenagers are considered as NotAdult in regulated countries.|
|adult|3|The user should be a treated as an adult.|


## ageGroup
| Value	   | #	|Description|
|:---------------|:--------|:----------|
|undefined|0|Default value, no ageGroup has been set for the user.|
|minor|1|The user is consider a minor.|
|notAdult|2|The user is from a country that has statutory regulations (US, KR, UK, EU) and user’s age is more than the upper limit of kid age (as per country) and less than lower limit of Adult age (as per country). So basically, teenagers are considered as NotAdult in regulated countries.|
|adult|3|The user should be a treated as an adult.|


## consentProvidedForMinor
| Value	   | #	|Description|
|:---------------|:--------|:----------|
|none|0|Default value, no ageGroup has been set for the user.|
|granted|1|Consent has been obtained for the user to have an account.|
|denied|2|Consent has not been obtained for the user to have an account.|
|notRequired|3|The user is from a location that does not require consent.|


## JSON representation

Here is a JSON representation of the ageGroup, consentProvidedForMinor and legalAgeGroupClassification for the user.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "archiveFolder"
  ],
  "@odata.type": "microsoft.graph.mailboxSettings"
}-->

```json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users(ageGroup,consentProvidedForMinor,legalAgeGroupClassification)/$entity",
    "ageGroup": "Minor",
    "consentProvidedForMinor": "Granted",
    "legalAgeGroupClassification": "MinorWithParentalConsent"
}


```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mailboxSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->