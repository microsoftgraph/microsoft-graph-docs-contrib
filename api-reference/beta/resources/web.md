# web resource type

Specifies settings for a web application.

### Properties

| Property | Type | Description |
|:---------|:-----|:------------|
|logoutUrl|String| |
|oauth2AllowImplicitFlow|Boolean| Specifies whether this web application can request tokens using the oAuth 2.0 implicit flow. The default is false. |
|redirectUrls|String collection| Specifies the URLs that user tokens are sent to for sign in, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to. |

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.web"
}-->

```json
{
  "logoutUrl": "String",
  "oauth2AllowImplicitFlow": true,
  "redirectUrls": ["String"]
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "web resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->