
### TeamsCatalogApp
Represents an app in the Microsoft Teams app catalog.

#### Properties
| Property            | Type     | Description
| ------------------- | -------- | -----------
| id                  | string   | The catalog app's generated app ID (different from the developer-provided ID in the [Teams zip app package](#teams-application-manifest)).
| developerProvidedId | string   | The ID of the catalog provided by the app developer in the [Teams zip app package](#teams-application-manifest).
| name                | string   | The name of the catalog app provided by the app developer in the [Teams zip app package](#teams-application-manifest).
| version             | string   | The version of the catalog app provided by the app developer in the [Teams zip app package](#teams-application-manifest).
| distributionMethod  | enum     | The method of distribution for the catalog app: `Organization`, `Store`.

#### JSON representation
```json
{
  "id": "0d0e31ca-59a5-31a6-8d87-12429a173d34",
  "developerProvidedId": "bcb707d5-94e0-48f8-bbe7-6137a0565a4c",
  "name": "Test App",
  "version": "1.0.0",
  "distributionMethod": "Organization"
}
```

#### See also

- [Publish an app to your organization's app catalog](../api/add_lob_apps.md)
- [List apps from the app catalog](../api/list_lob_apps.md)
- [Update an app in your organization's app catalog](../api/update_lob_apps.md)
- [Remove an app from your organization's app catalog](../api/remove_lob_apps.md)
