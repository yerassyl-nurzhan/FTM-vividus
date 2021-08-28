Description: Task 2 Creating Trello card via API

Scenario: Create a board
When I send HTTP POST to the relative URL '/1/boards/?key=f95526f030cfb910d5481bfa7d17cd1d&token=e3dc236292ba4f45c52eb58b01713ad4393dcab3ac1ce6bcd88edf19a985fa52&name=Vividus1'
Then the response code is equal to '200'
When I save JSON element from context by JSON path `$.id` to story variable `boardId`

Scenario: Create a list
When I send HTTP POST to the relative URL '/1/boards/#{removeWrappingDoubleQuotes(${boardId})}/lists?key=f95526f030cfb910d5481bfa7d17cd1d&token=e3dc236292ba4f45c52eb58b01713ad4393dcab3ac1ce6bcd88edf19a985fa52&name=VividusList'
Then the response code is equal to '200'
When I save JSON element from context by JSON path `$.id` to story variable `listId`

Scenario: Create a card
When I send HTTP POST to the relative URL '/1/cards/?key=f95526f030cfb910d5481bfa7d17cd1d&token=e3dc236292ba4f45c52eb58b01713ad4393dcab3ac1ce6bcd88edf19a985fa52&name=VividusCard&idList=#{removeWrappingDoubleQuotes(${listId})}&idBoard=#{removeWrappingDoubleQuotes(${boardId})}'
Then the response code is equal to '200'
When I save JSON element from context by JSON path `$.id` to story variable `cardId`

Scenario: Update a card
Given request body: {
"text":<text>
}
When I send HTTP POST to the relative URL '/1/cards/#{removeWrappingDoubleQuotes(${cardId})}/actions/comments?key=f95526f030cfb910d5481bfa7d17cd1d&token=e3dc236292ba4f45c52eb58b01713ad4393dcab3ac1ce6bcd88edf19a985fa52&text=<text>'
Then the response code is equal to '200'
Then JSON element by JSON path `$.text` is equal to `<text>`

Examples:
{transformer=FROM_LANDSCAPE}
|text|Alex|Martin|Thomas|
