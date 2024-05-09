%Defining the grammar rules
% sentence: Represents a complete sentence and consists of a noun phrase followed by a verb phrase.
sentence(Tree) --> noun_phrase(NP), verb_phrase(VP), { Tree = s(NP, VP) }.

% noun_phrase: Represents a noun phrase and consists of an article followed by a noun.
noun_phrase(Tree) --> article(A), noun(N), { Tree = np(A, N) }.

% verb_phrase: Represents a verb phrase and consists of a verb followed by a noun phrase.
verb_phrase(Tree) --> verb(V), noun_phrase(NP), { Tree = vp(V, NP) }.

% Lexical items
article(the) --> [the].
article(a) --> [a].
noun(cat) --> [cat].
noun(dog) --> [dog].
noun(bird) --> [bird].
verb(chases) --> [chases].
verb(eats) --> [eats].
verb(sings) --> [sings].


% Entry point for parsing
parse(Tree, Sentence) :- sentence(Tree, Sentence, []).


% Example usage:
% ?- parse(Tree, [the, cat, chases, a, bird]).
% Tree = s(np(the, cat), vp(chases, np(a, bird))).
