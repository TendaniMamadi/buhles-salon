export default function routes(frontEndInstance,logic){

    const homeRoute = async (req, res) => {
        res.render('index');
    }

    return{
        homeRoute
    }
}