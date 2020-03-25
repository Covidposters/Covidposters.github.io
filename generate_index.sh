#!/bin/bash

cat header.html

for IMG_PATH in $(find images -type f -name \*.ai | sed 's/.ai//g' );do

TEXT_TITLE=$(cat ${IMG_PATH}.txt | head -1)
TEXT_BODY=$(cat ${IMG_PATH}.txt | tail -1)

cat << EOF
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
	    <a href="${IMG_PATH}.pdf">
	      <img src="${IMG_PATH}.png" class="card-img-top" focusable="false" role="img">
	  </a>
              <div class="card-body">
              <p class="card-text">
		<h3>${TEXT_TITLE}</h3>
	        <p>${TEXT_BODY}</p>
	      </p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
			<a href="${IMG_PATH}.pdf" class="btn btn-sm btn-outline-secondary" type="button">pdf</a>
			<a href="${IMG_PATH}.png" class="btn btn-sm btn-outline-secondary" type="button">png</a>
			<a href="${IMG_PATH}.ai" class="btn btn-sm btn-outline-secondary" type="button">ai (source)</a>
                </div>
                
              
              <div align=right>
              <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
              <img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" />
              </a>
              </div>
              </div>
            </div>
          </div>
        </div>
EOF

done
