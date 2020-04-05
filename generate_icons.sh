#!/bin/bash 

cat header.html

for IMG_PATH in $(find icons -type f -name \*.ai | sed 's/.ai$//g' );do



cat << EOF
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
	    <a href="${IMG_PATH}.svg">
	      <img src="${IMG_PATH}.png" class="card-img-top" focusable="false" role="img">
	  </a>
              <div class="card-body">
              <p class="card-text">
		
	      </p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
			<a href="${IMG_PATH}.svg" class="btn btn-sm btn-outline-secondary" type="button">svg</a>
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

cat footer.html
