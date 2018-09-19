### Description
Update a previously published app in the Teams apps catalog. With this API you will be specifically updating an app published to your organization's app catalog (aka Tenant app catalog). To publish to your organization's app catalog, specify 'Organization' as the distributionMethod in the resource  [TeamsCatalogApp](../resources/teamscatalogapp.md)

#### Permissions
One of the following permissions is required to call this API. Only Global Administrators can call this API. To learn more, including how to choose permissions, see [Permissions](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference).

| Permission Type                        | Permissions (from least to most privileged)
| ---------------                        | ---------------------------
| Delegated (work or school account)     | AppCatalog.ReadWrite.All (Only Global Administrators)
| Delegated (personal Microsoft account) | Not supported
| Application                            | Not supported

#### Request headers
| Header        | Value           | Required
| ---------     | --------------  | --------
| Authorization | Bearer {token}  | ✓
| Content-Type  | application/zip |

#### Request Body
Teams Zip Manifest Payload: For Teams application zip file [see Create an app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package)

#### Response
```
HTTP/1.1 204 No Content
```

#### Example
##### Request
```
PUT https://graph.microsoft.com/beta/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8
Content-type: application/zip
Content-length: 244

[Zip file containing a Teams app package]
```
For Teams application zip file [see Create app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package)


##### Response
```
HTTP/1.1 204 No Content
```

#### Usage Tips
Use the ID returned from the [List app catalog](./list_lob_apps.md) call for to reference the app you'd like to update. Do not use the ID from the manifest of the zip app package.
