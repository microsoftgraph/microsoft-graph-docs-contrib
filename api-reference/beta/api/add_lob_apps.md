Publish an app to the organization's catalog (aka Tenant app catalog)

#### Permissions
One of the following permissions is required to call this API. Only Global Administrators can call this API. To learn more, including how to choose permissions, see [Permissions](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference).

| Permission Type                        | Permissions (from least to most privileged)
| ----------------------------------     | -------------
| Delegated (work or school account)     | AppCatalog.ReadWrite.All (Only Global Administrators)
| Delegated (personal Microsoft account) | Not supported
| Application                            | Not supported

#### Request headers
| Header        | Value           | Required
| --------------| --------------  | --------
| Authorization | Bearer {token}  | ✓
| Content-Type  | application/zip |

#### Request Body
Teams Zip Manifest Payload: For Teams application zip file [see Create an app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package)

#### Response
```
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "e3e29acb-8c79-412b-b746-e6c39ff4cd22",
  "developerProvidedId": "b5561ec9-8cab-4aa3-8aa2-d8d7172e4311",
  "name": "Test App",
  "version": "1.0.0",
  "distributionMethod": "Tenant"
}
```
The response is a [TeamsCatalogApp](../resources/teamscatalogapp.md).

#### Example
##### Request
```
POST https://graph.microsoft.com/beta/appCatalogs/teamsApps
Content-type: application/zip
Content-length: 244

[Zip file containing a Teams app package]
```
For Teams application zip file [see Create an app package](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package). 

##### Response
```
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "e3e29acb-8c79-412b-b746-e6c39ff4cd22",
  "developerProvidedId": "b5561ec9-8cab-4aa3-8aa2-d8d7172e4311",
  "name": "Test App",
  "version": "1.0.0",
  "distributionMethod": "Tenant"
}
```
The response is a [TeamsCatalogApp](#teamscatalogapp).

#### Usage Tips
Information for creating a Teams app manifest package can be found [here](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package).

#### Known Limitations
One cannot create a tenant app with the same manifest ID as an already existing organization app.
