
describe "HScript Grammar", ->

    grammar = null

    beforeEach ->
        waitsForPromise ->
            atom.packages.activatePackage("language-hscript")
        runs ->
            grammar = atom.grammars.grammarForScopeName("source.hscript")

    it "parses the grammar", ->
        expect(grammar).toBeTruthy()
        expect(grammar.scopeName).toBe "source.hscript"
        expect(grammar.name).toBe "HScript"
        expect(grammar.fileTypes[0]).toBe 'hscript'
