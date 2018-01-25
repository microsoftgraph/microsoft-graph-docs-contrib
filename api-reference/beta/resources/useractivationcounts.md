# userActivationCounts resource type

## Properties

| Property          | Type   | Description                              |
| :---------------- | :----- | ---------------------------------------- |
| productType       | String | The product type such as "Office 365 ProPlus", "Project Client", and "Visio Pro for Office 365". |
| lastActivatedDate | Date   | The date of the latest activation.       |
| windows           | Int64  | The activation count on Windows. This number includes every single activation on any Windows machine. |
| mac               | Int64  | The activation count on Mac OS.          |
| windows10Mobile   | Int64  | The activation count on Windows 10 mobile. |
| ios               | Int64  | The activation count on iOS.             |
| android           | Int64  | The activation count on Android device.  |
| activatedOnSharedComputer   | Boolean | True if the user used the product on shared computer before. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userActivationCounts"
} -->

```json
{
  "productType": "String", 
  "lastActivatedDate": "Date", 
  "windows": 1024, 
  "mac": 1024, 
  "windows10Mobile": 1024, 
  "ios": 1024, 
  "android": 1024,
  "activatedOnSharedComputer": true 
}
```
