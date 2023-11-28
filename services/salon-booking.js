export default function salonBooking(db) {

    async function findStylist(phone_number) {
        try {
            const query = `SELECT * FROM stylist where phone_number = $1`
            const result = await db.manyOrNone(query,[phone_number]);
            console.log(result)
            return result

        } catch (error) {
            console.log(error);
            return false
        }
    };

    function findClient(phoneNumber) {

    };

    function findTreatment(code) {

    };

    function findAllTreatments() {

    };



    return {
        findStylist,
        findClient,
        findTreatment,
        findAllTreatments

    }
}  