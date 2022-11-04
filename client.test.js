const {greeting} = require('./client')

test('should return null when params is null', () => {
    expect(greeting()).toBe()
})

test('should return Hello + name', () => {
    expect(greeting('brother')).toBe('Hello brother')
})