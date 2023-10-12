#!/usr/bin/env bash

user='piecioshka'

### WARNING: Carefully edit below ###

dirname=`pwd`
directory="${dirname}/followers"
filename="${dirname}/bin/dump.sh"

# Create directory for dumps
mkdir -p $directory

# Create script
cat > $filename <<EOL
#!/usr/bin/env bash

command=$(which github-track-followers)
dump="$directory/$user-\$(date +'%Y-%m-%d-%H-%M-%S').md"
node=$(which node)

# This will be stored in ../followers/
$node \$command -u $user > \$dump

# This will be stored in ~/logs/
echo -n "\$(date) - "
head -n 1 \$dump
EOL

# Make it executable
chmod +x $filename
