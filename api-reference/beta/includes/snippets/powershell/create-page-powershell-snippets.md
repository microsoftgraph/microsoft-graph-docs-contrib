---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	name = "test.aspx"
	title = "test"
	pageLayout = "article"
	showComments = $true
	showRecommendedPages = $false
	titleArea = @{
		enableGradientEffect = $true
		imageWebUrl = "/_LAYOUTS/IMAGES/VISUALTEMPLATETITLEIMAGE.JPG"
		layout = "colorBlock"
		showAuthor = $true
		showPublishedDate = $false
		showTextBlockAboveTitle = $false
		textAboveTitle = "TEXT ABOVE TITLE"
		textAlignment = "left"
		imageSourceType = 
		title = "sample1"
	}
	canvasLayout = @{
		horizontalSections = @(
			@{
				layout = "oneThirdRightColumn"
				id = "1"
				emphasis = "none"
				columns = @(
					@{
						id = "1"
						width = 8
						webparts = @(
							@{
								id = "6f9230af-2a98-4952-b205-9ede4f9ef548"
								innerHtml = "<p><b>Hello!</b></p>"
							}
						)
					}
					@{
						id = "2"
						width = 4
						webparts = @(
							@{
								id = "73d07dde-3474-4545-badb-f28ba239e0e1"
								webPartType = "d1d91016-032f-456d-98a4-721247c305e8"
							}
						)
					}
				)
			}
		)
	}
}

New-MgSitePage -SiteId $siteId -BodyParameter $params

```