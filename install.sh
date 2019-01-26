#!/usr/bin/env bash

SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

pushd "${SCRIPTDIR}/homedir" > /dev/null


readarray -t files < <(find . -type f)


for file in "${files[@]}"; do
  echo
  echo
  echo "Processing file '${file}'..."
  
  installed_file="${HOME}/${file}"

  if [[ -f "${installed_file}" ]]; then
    if cmp --silent "${file}" "${installed_file}"; then
      echo "'${installed_file}' is up-to-date - nothing to do"
    else
      git diff "${installed_file}" "${file}"

      echo 

      echo "file '${installed_file}' differs. Look at diff above (left side - installed file; right side - repository file). Do you want to install changes?"
      select yn in "Yes" "No"; do
        case $yn in
          Yes ) cp "${installed_file}" "${installed_file}.bak" && cp "${file}" "${installed_file}" && echo "File installed"; break;;
          No ) break;;
        esac
      done

    fi
  else
    echo "file '${installed_file}' is not installed!"
  fi
  
done 


popd > /dev/null

 
