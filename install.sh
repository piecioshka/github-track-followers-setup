#!/usr/bin/env bash

dirname=`pwd`
directory="${dirname}/followers"
filename="${dirname}/bin/dump.sh"
user='piecioshka'
dump="$directory/$user-\$(date +'%Y-%m-%d-%H-%M-%S').md"

# Create directory for dumps
mkdir -p $directory

# Create script
cat > $filename <<EOL
#!/usr/bin/env bash

command=$(which github-track-followers)
eval \$command -u $user > $dump
EOL

# Make it executable
chmod +x $filename
