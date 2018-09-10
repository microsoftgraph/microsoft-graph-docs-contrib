# parentalControlSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Specifies parental control settings for an application.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|countriesBlockedForMinors|String collection| Specifies the countries in which the app is blocked for minors. |
|legalAgeGroupRule| String | Specifies the legal age group rule that applies to users of the app. Can be set to one of the following values: <ul><li>Allow</li><li>RequireConsentForPrivacyServices</li><li>RequireConsentForMinors</li><li>RequireConsentForKids</li><li>BlockMinors</li></ul> |

## JSON representation
Here is a JSON representation of the resource.

```json
{
  "countriesBlockedForMinors": [ "String" ],
  "legalAgeGroupRule": "String"
}

```