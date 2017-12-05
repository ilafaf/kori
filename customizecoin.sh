#!/bin/bash
grep -rl 'BITCOIN' ./ | xargs sed -i 's/BITCOIN/KORI/g'
grep -rl 'Bitcoin' ./ | xargs sed -i 's/Bitcoin/Kori/g'
grep -rl 'BTC' ./ | xargs sed -i 's/BTC/KOR/g'
find . -type f -exec rename 's/(.*)\/(.*)bitcoin(.*)/$1\/$2kori$3/' {} +
