---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ApplyPostRequestBody()
criteria = WorkbookFilterCriteria()
criteria.criterion1 = 'criterion1-value'

criteria.criterion2 = 'criterion2-value'

criteria.color = 'color-value'

criteriaoperator = Operator()

criteria.operator = criteriaoperator
criteriaicon = WorkbookIcon()
criteriaicon.set = 'set-value'

criteriaicon.Index = 99


criteria.icon = criteriaicon
criteria.dynamic_criteria = 'dynamicCriteria-value'

criteriavalues = Json()

criteria.values = criteriavalues
criteria.filter_on = 'filterOn-value'


request_body.criteria = criteria



await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.tables.by_table_id('workbookTable-id').columns.by_column_id('workbookTableColumn-id').filter.apply.post(request_body = request_body)


```