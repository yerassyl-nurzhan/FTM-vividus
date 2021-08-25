Description: Task 2 Creating Trello card via API

Scenario: Create a board
When I send HTTP POST to the relative URL '/1/boards/?key=f95526f030cfb910d5481bfa7d17cd1d&token=e3dc236292ba4f45c52eb58b01713ad4393dcab3ac1ce6bcd88edf19a985fa52&name=Vividus'
Then the response code is equal to '200'
When I save JSON element from context by JSON path `$.id` to story variable `boardId`

Scenario: Create a list
When I send HTTP POST to the relative URL '/1/boards/${boardId}/lists?key=f95526f030cfb910d5481bfa7d17cd1d&token=e3dc236292ba4f45c52eb58b01713ad4393dcab3ac1ce6bcd88edf19a985fa52&name=VividusList'
Then the response code is equal to '200'
When I save JSON element from context by JSON path `$.id` to story variable `listId`

Scenario: Create a card
When I send HTTP POST to the relative URL '/1/cards/?key=f95526f030cfb910d5481bfa7d17cd1d&token=e3dc236292ba4f45c52eb58b01713ad4393dcab3ac1ce6bcd88edf19a985fa52&name=VividusCard&idList=${listId}&idBoard=${boardId}'
Then the response code is equal to '200'
When I save JSON element from context by JSON path `$.id` to story variable `cardId`

Scenario: Update a card
Given request body: "desk":"Username"
When I send HTTP PUT to the relative URL '/1/cards/${cardId}/desc?key=f95526f030cfb910d5481bfa7d17cd1d&token=e3dc236292ba4f45c52eb58b01713ad4393dcab3ac1ce6bcd88edf19a985fa52'
Then the response code is equal to '200'
Then JSON element by JSON path `$.desc` is equal to `${Username}`

Examples:
|Username|Alex|Martin|Thomas|
