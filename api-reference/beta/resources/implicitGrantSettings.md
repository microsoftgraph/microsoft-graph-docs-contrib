# implicitGrantSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Specifies whether this web application can request tokens using the oAuth 2.0 implicit flow. Separate properties are available to request id and access tokens as part of the implicit flow. To enable implicit flow at least one of these properties must be set to true.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
|enableIdTokenIssuance| "Boolean" | Specifies whether this web application can request id token using the oAuth 2.0 implicit flow.|
|enableAccessTokenIssuance| "Boolean" | Specifies whether this web application can request access token using the oAuth 2.0 implicit flow.|

## JSON representation
Here is a JSON representation of the resource.

```json
{
  "enableIdTokenIssuance": "Boolean",
  "enableAccessTokenIssuance": "Boolean"
}

```