import React, { useState } from 'react';
import { Card, Button, Col, Container, Row, Modal, Form } from 'react-bootstrap';
import ReactQuill from 'react-quill';
import 'react-quill/dist/quill.snow.css';
import cogoToast from "cogo-toast";

export default function ProductSell() {
    const [show, setShow] = useState(false);
    const [selectedImages, setSelectedImages] = useState([]);
    const [previewImages, setPreviewImages] = useState([]);
    const [description, setDescription] = useState('');
    const [isSellChecked, setIsSellChecked] = useState(false);
    const [isRentChecked, setIsRentChecked] = useState(false);

    const handleClose = () => {
        setShow(false);
        setSelectedImages([]);
        setPreviewImages([]);
    };

    const handleShow = () => setShow(true);

    const handleImageChange = (e) => {
        const files = Array.from(e.target.files);

        if (selectedImages.length + files.length > 4) {
            cogoToast.error('Maximum 4 Image Select', { position: 'bottom-center' });
            return;
        }

        const selected = [...selectedImages];
        const preview = [...previewImages];

        files.forEach((file) => {
            selected.push(file);

            const reader = new FileReader();
            reader.onload = () => {
                preview.push(reader.result);
                if (preview.length === files.length) {
                    setSelectedImages(selected);
                    setPreviewImages(preview);
                }
            };
            reader.readAsDataURL(file);
        });
    };

    const handleImageCancel = (index) => {
        const newSelectedImages = [...selectedImages];
        const newPreviewImages = [...previewImages];

        newSelectedImages.splice(index, 1);
        newPreviewImages.splice(index, 1);

        setSelectedImages(newSelectedImages);
        setPreviewImages(newPreviewImages);
    };

    const handleDescriptionChange = (value) => {
        setDescription(value);
    };

    const handleSellChange = () => {
        setIsSellChecked(!isSellChecked);
    };

    const handleRentChange = () => {
        setIsRentChecked(!isRentChecked);
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        handleClose();

        // Handle form submission here
        // ...
    };

    return (
        <Container>
            <Row>
                <Col sm={8}></Col>
                <Col sm={4}>
                    <Card style={{ width: '18rem' }}>
                        <Card.Body>
                            <p style={{ marginTop: '30px' }}>
                                You can sell products and rent products from here. You can post books, clothes, electronic products on our website.
                            </p>
                            <div className="d-grid gap-2">
                                <Button onClick={handleShow} variant="primary">
                                    ADD
                                </Button>
                            </div>
                        </Card.Body>
                    </Card>
                </Col>
            </Row>

            <Modal show={show} onHide={handleClose}>
                <Modal.Header closeButton>
                    <Modal.Title>Please Fill Up This Form</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <Form onSubmit={handleSubmit}>
                        <Form.Group className="mb-3" controlId="formGroupEmail">
                            <Form.Label>Email address</Form.Label>
                            <Form.Control type="email" placeholder="Enter email" />
                        </Form.Group>

                        <Form.Group className="mb-3" controlId="formGroupPhone">
                            <Form.Label>Phone Number</Form.Label>
                            <Form.Control type="text" placeholder="Enter Phone Number" />
                        </Form.Group>

                        <Form.Group className="mb-3" controlId="formGroupPrice">
                            <Form.Label>Product Price</Form.Label>
                            <Form.Control type="text" placeholder="Enter Product Price" />
                        </Form.Group>

                        <Form.Group className="mb-3" controlId="formGroupDescription">
                            <Form.Label>Product Description</Form.Label>
                            <ReactQuill value={description} onChange={handleDescriptionChange} />
                        </Form.Group>

                        <Form.Group className="mb-3" controlId="formGroupImages">
                            <Form.Label>Images</Form.Label>
                            <Form.Control type="file" accept="image/*" multiple onChange={handleImageChange} />
                            <div className="row g-3">
                                {previewImages.map((preview, index) => (
                                    <div key={index} className="col-md-4">
                                        <div style={{ position: 'relative' }}>
                                            <img src={preview} alt={`Preview ${index}`} style={{ width: '100%', height: 'auto' }} />
                                            <div className="cancel-button" onClick={() => handleImageCancel(index)}>
                                                <span className="cancel-button-x pb-2">x</span>
                                            </div>
                                        </div>
                                    </div>
                                ))}
                            </div>
                        </Form.Group>

                        <Form.Group controlId="formGroupSell" style={{ marginTop: '30px' }}>
                            <Form.Check
                                type="checkbox"
                                label="Sell"
                                checked={isSellChecked}
                                onChange={handleSellChange}
                            />
                        </Form.Group>

                        <Form.Group controlId="formGroupRent">
                            <Form.Check
                                type="checkbox"
                                label="Rent"
                                checked={isRentChecked}
                                onChange={handleRentChange}
                            />
                        </Form.Group>

                        <Button style={{ marginTop: '30px' }} className="pt-2" variant="primary" type="submit">
                            Submit
                        </Button>
                    </Form>
                </Modal.Body>
            </Modal>

            <style jsx>{`
        .cancel-button {
          position: absolute;
          top: 8px;
          right: 5px;
          width: 20px;
          height: 20px;
          border-radius: 50%;
          background-color: red;
          display: flex;
          align-items: center;
          justify-content: center;
          cursor: pointer;
        }

        .cancel-button-x {
          color: white;
          font-weight: bold;
        }
      `}</style>
        </Container>
    );
}
