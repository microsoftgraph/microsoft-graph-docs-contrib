Update a previously published app in the organization's catalog(aka Tenant app catalog).

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
- Teams Zip Manifest Payload: teams application zip file [see Create app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package)

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
The ID to include in this call is the ID returned by making the [List organizations app catalog (POST) call](#post-/appCatalogs/teamsApps). This ID is not the ID in the manifest of the zip app package.

#### Known Limitations
The user must use the generated app ID returned by the [Create (POST) call](#post-/appCatalogs/teamsApps) and not the DeveloperProvidedId.

#### Future Extension
None.
