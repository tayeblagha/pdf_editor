// Components

import test from './Routing.svelte'
import AccessDenied from './AccessDenied.svelte';



// Export the route definition object
export default {
    // Exact path
   

    // Using named parameters, with last being optional
    '/editpdf/:first/:last': test,
    '*' : AccessDenied

    
    

    // Catch-all, must be last
   // '*': NotFound,
}