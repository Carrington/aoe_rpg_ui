class TrieNode {
  public value: number | undefined;
  public character: string | null;
  public children: Map<string, TrieNode>;

  constructor(key: string | null, value?: number) {
      this.value = value;
      this.character = key;
      this.children = new Map<string, TrieNode>();
  }
}

export { TrieNode };

class Trie {
    private root: TrieNode;

    constructor() {
        this.root = new TrieNode(null);
    }

    public insert(word: string): void {
        let children = this.root.children;
        let level = 0;

        for (const char of word) {
            const node: TrieNode =
              children.get(char) || new TrieNode(char);

            if (!children.get(char)) children.set(char, node);

            children = node.children;

            if (level++ === word.length - 1 && node) {
                node.value = this.aWeightingFunctionGoesHere(node);
            }
        }
    }

    public search(word: string): boolean {
        return (!!this.getNode(word).value);
    }

    public getNode(word: string): TrieNode {
        let node = new TrieNode(null);
        let currentNode = this.root.children;

        for (const char of word) {
            if (currentNode.get(char)) {
                node = currentNode.get(char) || node;
                currentNode = node.children;
            }
        }

        return node;
    }

    public startsWith(prefix: string): boolean {
        return this.getNode(prefix) ? true : false;
    }

    public createDictionary(words: string[]) {
      words.forEach(word =>
        this.insert(word)
      );

      return this;
    }

    private aWeightingFunctionGoesHere(node: TrieNode): number {
      return 1;
    }
}

export default Trie;